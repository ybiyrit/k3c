module github.com/rancher/k3c

go 1.23.0

replace (
	github.com/containerd/containerd => github.com/dweomer/containerd v1.3.5-0.20200416225531-efdd59c500bf // v1.3.4+k3c.1
	github.com/containerd/cri => github.com/dweomer/cri v1.3.1-0.20200501231243-e8677cd6a496 // v1.3.0+k3c.8
	github.com/docker/distribution => github.com/docker/distribution v0.0.0-20200223014041-6b972e50feee
	github.com/docker/docker => github.com/docker/docker v1.4.2-0.20200227233006-38f52c9fec82
	github.com/hashicorp/go-immutable-radix => github.com/tonistiigi/go-immutable-radix v0.0.0-20170803185627-826af9ccf0fe
	github.com/jaguilar/vt100 => github.com/tonistiigi/vt100 v0.0.0-20190402012908-ad4c4a574305
	github.com/moby/buildkit => github.com/dweomer/buildkit v0.6.2-0.20200111044149-7562b84375e4 // k3c
	github.com/opencontainers/runc => github.com/opencontainers/runc v1.0.0-rc10

	k8s.io/api => github.com/rancher/kubernetes/staging/src/k8s.io/api v1.17.4-k3s1
	k8s.io/apiextensions-apiserver => github.com/rancher/kubernetes/staging/src/k8s.io/apiextensions-apiserver v1.17.4-k3s1
	k8s.io/apimachinery => github.com/rancher/kubernetes/staging/src/k8s.io/apimachinery v1.17.4-k3s1
	k8s.io/apiserver => github.com/rancher/kubernetes/staging/src/k8s.io/apiserver v1.17.4-k3s1
	k8s.io/cli-runtime => github.com/rancher/kubernetes/staging/src/k8s.io/cli-runtime v1.17.4-k3s1
	k8s.io/client-go => github.com/rancher/kubernetes/staging/src/k8s.io/client-go v1.17.4-k3s1
	k8s.io/cloud-provider => github.com/rancher/kubernetes/staging/src/k8s.io/cloud-provider v1.17.4-k3s1
	k8s.io/cluster-bootstrap => github.com/rancher/kubernetes/staging/src/k8s.io/cluster-bootstrap v1.17.4-k3s1
	k8s.io/code-generator => github.com/rancher/kubernetes/staging/src/k8s.io/code-generator v1.17.4-k3s1
	k8s.io/component-base => github.com/rancher/kubernetes/staging/src/k8s.io/component-base v1.17.4-k3s1
	k8s.io/cri-api => github.com/rancher/kubernetes/staging/src/k8s.io/cri-api v1.17.4-k3s1
	k8s.io/csi-translation-lib => github.com/rancher/kubernetes/staging/src/k8s.io/csi-translation-lib v1.17.4-k3s1
	k8s.io/kube-aggregator => github.com/rancher/kubernetes/staging/src/k8s.io/kube-aggregator v1.17.4-k3s1
	k8s.io/kube-controller-manager => github.com/rancher/kubernetes/staging/src/k8s.io/kube-controller-manager v1.17.4-k3s1
	k8s.io/kube-proxy => github.com/rancher/kubernetes/staging/src/k8s.io/kube-proxy v1.17.4-k3s1
	k8s.io/kube-scheduler => github.com/rancher/kubernetes/staging/src/k8s.io/kube-scheduler v1.17.4-k3s1
	k8s.io/kubectl => github.com/rancher/kubernetes/staging/src/k8s.io/kubectl v1.17.4-k3s1
	k8s.io/kubelet => github.com/rancher/kubernetes/staging/src/k8s.io/kubelet v1.17.4-k3s1
	k8s.io/kubernetes => github.com/rancher/kubernetes v1.17.4-k3s1
	k8s.io/legacy-cloud-providers => github.com/rancher/kubernetes/staging/src/k8s.io/legacy-cloud-providers v1.17.4-k3s1
	k8s.io/metrics => github.com/rancher/kubernetes/staging/src/k8s.io/metrics v1.17.4-k3s1
	k8s.io/sample-apiserver => github.com/rancher/kubernetes/staging/src/k8s.io/sample-apiserver v1.17.4-k3s1
)

require (
	github.com/BurntSushi/toml v0.3.1
	github.com/Masterminds/sprig v2.22.0+incompatible
	github.com/containerd/aufs v0.0.0-20190114185352-f894a800659b
	github.com/containerd/console v1.0.0
	github.com/containerd/containerd v1.3.4
	github.com/containerd/cri v1.11.1-0.20200320165605-f864905c93b9
	github.com/containerd/typeurl v1.0.0
	github.com/containerd/zfs v0.0.0-20190829050200-2ceb2dbb8154
	github.com/containernetworking/cni v0.7.1
	github.com/davecgh/go-spew v1.1.1
	github.com/docker/distribution v2.7.1+incompatible
	github.com/docker/docker v1.4.2-0.20190319215453-e7b5f7dbe98c
	github.com/docker/go-units v0.4.0
	github.com/gogo/protobuf v1.3.1
	github.com/golang/protobuf v1.3.5
	github.com/google/uuid v1.1.1
	github.com/moby/buildkit v0.0.0
	github.com/opencontainers/image-spec v1.0.1
	github.com/pborman/uuid v1.2.0
	github.com/pkg/errors v0.9.1
	github.com/rancher/norman/v2 v2.0.0-20200111044641-76fd7a67396a
	github.com/rancher/wrangler v0.5.0
	github.com/sirupsen/logrus v1.4.2
	github.com/urfave/cli v1.22.2
	github.com/urfave/cli/v2 v2.1.1
	golang.org/x/sync v0.12.0
	google.golang.org/grpc v1.27.1
	k8s.io/api v0.17.4
	k8s.io/apimachinery v0.17.4
	k8s.io/client-go v0.17.4
	k8s.io/cri-api v0.17.4
	k8s.io/klog v1.0.0
	k8s.io/kubectl v0.17.4
	k8s.io/kubernetes v1.17.4
	sigs.k8s.io/yaml v1.1.0
)

require (
	github.com/Azure/go-ansiterm v0.0.0-20170929234023-d6e3b3328b78 // indirect
	github.com/Masterminds/goutils v1.1.0 // indirect
	github.com/Masterminds/semver v1.5.0 // indirect
	github.com/Microsoft/go-winio v0.4.14 // indirect
	github.com/Microsoft/hcsshim v0.8.7-0.20190820203702-9e921883ac92 // indirect
	github.com/beorn7/perks v1.0.1 // indirect
	github.com/containerd/cgroups v0.0.0-20200413225007-9f1c62dddf4b // indirect
	github.com/containerd/continuity v0.0.0-20190827140505-75bee3e2ccb6 // indirect
	github.com/containerd/fifo v0.0.0-20190816180239-bda0ff6ed73c // indirect
	github.com/containerd/go-cni v0.0.0-20200107172653-c154a49e2c75 // indirect
	github.com/containerd/go-runc v0.0.0-20190911050354-e029b79d8cda // indirect
	github.com/containerd/ttrpc v1.0.0 // indirect
	github.com/containernetworking/plugins v0.8.4 // indirect
	github.com/coreos/go-systemd v0.0.0-20190620071333-e64a0ec8b42a // indirect
	github.com/cpuguy83/go-md2man/v2 v2.0.0-20190314233015-f79a8a8ca69d // indirect
	github.com/docker/go-connections v0.3.0 // indirect
	github.com/docker/go-events v0.0.0-20190806004212-e31b211e4f1c // indirect
	github.com/docker/go-metrics v0.0.1 // indirect
	github.com/docker/libnetwork v0.8.0-dev.2.0.20190624125649-f0e46a78ea34 // indirect
	github.com/docker/spdystream v0.0.0-20160310174837-449fdfce4d96 // indirect
	github.com/emicklei/go-restful v2.9.5+incompatible // indirect
	github.com/fsnotify/fsnotify v1.4.7 // indirect
	github.com/godbus/dbus v0.0.0-20181101234600-2ff6f7ffd60f // indirect
	github.com/gofrs/flock v0.7.0 // indirect
	github.com/gogo/googleapis v1.2.0 // indirect
	github.com/google/go-cmp v0.6.0 // indirect
	github.com/google/gofuzz v1.0.0 // indirect
	github.com/google/shlex v0.0.0-20150127133951-6f45313302b9 // indirect
	github.com/grpc-ecosystem/go-grpc-prometheus v1.2.0 // indirect
	github.com/grpc-ecosystem/grpc-opentracing v0.0.0-20180507213350-8e809c8a8645 // indirect
	github.com/hashicorp/errwrap v1.0.0 // indirect
	github.com/hashicorp/go-immutable-radix v1.0.0 // indirect
	github.com/hashicorp/go-multierror v1.0.0 // indirect
	github.com/hashicorp/golang-lru v0.5.3 // indirect
	github.com/huandu/xstrings v1.2.1 // indirect
	github.com/imdario/mergo v0.3.7 // indirect
	github.com/ishidawataru/sctp v0.0.0-20180213033435-07191f837fed // indirect
	github.com/jaguilar/vt100 v0.0.0-20150826170717-2703a27b14ea // indirect
	github.com/json-iterator/go v1.1.8 // indirect
	github.com/konsorten/go-windows-terminal-sequences v1.0.1 // indirect
	github.com/matttproud/golang_protobuf_extensions v1.0.1 // indirect
	github.com/mistifyio/go-zfs v2.1.2-0.20190413222219-f784269be439+incompatible // indirect
	github.com/mitchellh/copystructure v1.0.0 // indirect
	github.com/mitchellh/go-wordwrap v1.0.0 // indirect
	github.com/mitchellh/hashstructure v0.0.0-20170609045927-2bca23e0e452 // indirect
	github.com/mitchellh/reflectwalk v1.0.0 // indirect
	github.com/modern-go/concurrent v0.0.0-20180306012644-bacd9c7ef1dd // indirect
	github.com/modern-go/reflect2 v1.0.1 // indirect
	github.com/morikuni/aec v0.0.0-20170113033406-39771216ff4c // indirect
	github.com/opencontainers/go-digest v1.0.0-rc1.0.20180430190053-c9281466c8b2 // indirect
	github.com/opencontainers/runc v1.0.0-rc9.0.20200221051241-688cf6d43cc4 // indirect
	github.com/opencontainers/runtime-spec v1.0.2-0.20200307132014-f49fed0d6290 // indirect
	github.com/opencontainers/selinux v1.3.1-0.20190929122143-5215b1806f52 // indirect
	github.com/opentracing-contrib/go-stdlib v0.0.0-20171029140428-b1a47cfbdd75 // indirect
	github.com/opentracing/opentracing-go v0.0.0-20171003133519-1361b9cd60be // indirect
	github.com/prometheus/client_golang v1.1.0 // indirect
	github.com/prometheus/client_model v0.0.0-20190812154241-14fe0d1b01d4 // indirect
	github.com/prometheus/common v0.6.0 // indirect
	github.com/prometheus/procfs v0.0.3 // indirect
	github.com/russross/blackfriday/v2 v2.0.1 // indirect
	github.com/seccomp/libseccomp-golang v0.9.1 // indirect
	github.com/shurcooL/sanitized_anchor_name v1.0.0 // indirect
	github.com/syndtr/gocapability v0.0.0-20180916011248-d98352740cb2 // indirect
	github.com/tchap/go-patricia v2.3.0+incompatible // indirect
	github.com/tonistiigi/fsutil v0.0.0-20191018213012-0f039a052ca1 // indirect
	github.com/tonistiigi/units v0.0.0-20180711220420-6950e57a87ea // indirect
	go.etcd.io/bbolt v1.3.3 // indirect
	go.opencensus.io v0.22.0 // indirect
	golang.org/x/crypto v0.36.0 // indirect
	golang.org/x/net v0.38.0 // indirect
	golang.org/x/oauth2 v0.0.0-20190604053449-0f29369cfe45 // indirect
	golang.org/x/sys v0.31.0 // indirect
	golang.org/x/term v0.30.0 // indirect
	golang.org/x/text v0.23.0 // indirect
	golang.org/x/time v0.0.0-20190308202827-9d24e82272b4 // indirect
	google.golang.org/appengine v1.5.0 // indirect
	google.golang.org/genproto v0.0.0-20190819201941-24fa4b261c55 // indirect
	gopkg.in/inf.v0 v0.9.1 // indirect
	gopkg.in/yaml.v2 v2.2.8 // indirect
	gotest.tools/v3 v3.0.2 // indirect
	k8s.io/apiserver v0.0.0 // indirect
	k8s.io/utils v0.0.0-20191114184206-e782cd3c129f // indirect
)
