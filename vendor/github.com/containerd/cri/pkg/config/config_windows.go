// +build windows

/*
   Copyright The containerd Authors.

   Licensed under the Apache License, Version 2.0 (the "License");
   you may not use this file except in compliance with the License.
   You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

   Unless required by applicable law or agreed to in writing, software
   distributed under the License is distributed on an "AS IS" BASIS,
   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
   See the License for the specific language governing permissions and
   limitations under the License.
*/

package config

import (
	"os"
	"path/filepath"

	"github.com/containerd/containerd"
	"k8s.io/kubernetes/pkg/kubelet/server/streaming"

	"github.com/containerd/cri/pkg/constants"
)

var (
	// DefaultNetworkPluginBinDir is the default CNI directory for binaries
	DefaultNetworkPluginBinDir = filepath.Join(os.Getenv("ProgramFiles"), "containerd", "cni", "bin")
	// DefaultNetworkPluginConfDir is the default CNI directory for configuration
	DefaultNetworkPluginConfDir = filepath.Join(os.Getenv("ProgramFiles"), "containerd", "cni", "conf")
)

// DefaultConfig returns default configurations of cri plugin.
func DefaultConfig() PluginConfig {
	return PluginConfig{
		CniConfig: CniConfig{
			NetworkPluginBinDir:       DefaultNetworkPluginBinDir,
			NetworkPluginConfDir:      DefaultNetworkPluginConfDir,
			NetworkPluginMaxConfNum:   1, // only one CNI plugin config file will be loaded
			NetworkPluginConfTemplate: "",
		},
		ContainerdConfig: ContainerdConfig{
			Snapshotter:        containerd.DefaultSnapshotter,
			DefaultRuntimeName: "runhcs-wcow-process",
			NoPivot:            false,
			Runtimes: map[string]Runtime{
				"runhcs-wcow-process": {
					Type: "io.containerd.runhcs.v1",
				},
			},
		},
		DisableTCPService:   true,
		StreamServerAddress: "127.0.0.1",
		StreamServerPort:    "0",
		StreamIdleTimeout:   streaming.DefaultConfig.StreamIdleTimeout.String(), // 4 hour
		EnableTLSStreaming:  false,
		X509KeyPairStreaming: X509KeyPairStreaming{
			TLSKeyFile:  "",
			TLSCertFile: "",
		},
		SandboxImage:            "mcr.microsoft.com/k8s/core/pause:1.2.0",
		StatsCollectPeriod:      10,
		MaxContainerLogLineSize: 16 * 1024,
		Registry: Registry{
			Mirrors: map[string]Mirror{
				"docker.io": {
					Endpoints: []string{"https://registry-1.docker.io"},
				},
			},
		},
		MaxConcurrentDownloads: 3,
		// TODO(windows): Add platform specific config, so that most common defaults can be shared.
	}
}

// DefaultServiceConfig returns default configurations for a namespace.
func DefaultServiceConfig(ns string) PluginConfig {
	config := DefaultConfig()
	if ns != constants.K8sContainerdNamespace {
		config.NetworkPluginConfDir = filepath.Join(os.Getenv("ProgramFiles"), "containerd", "cri", ns, "cni", "conf")
	}
	return config
}
