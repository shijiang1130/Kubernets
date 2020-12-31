# kubelet
Setup a On-Premise kerbernets cluster including ceph storage
OS: Ubuntu 16.04 LTS
Kernel: 4.15.0-48-lowlatency #51~16.04.1-Ubuntu SMP PREEMPT Fri Apr 5 12:42:08 UTC 2019 x86_64 x86_64 x86_64 GNU/Linux

kubeadm version
kubeadm version: &version.Info{Major:"1", Minor:"19", GitVersion:"v1.19.4", GitCommit:"d360454c9bcd1634cf4cc52d1867af5491dc9c5f", GitTreeState:"clean", BuildDate:"2020-11-11T13:15:05Z", GoVersion:"go1.15.2", Compiler:"gc", Platform:"linux/amd64"}

kubeadm config images list 
I1231 12:25:12.558909   31767 version.go:252] remote version is much newer: v1.20.1; falling back to: stable-1.19
W1231 12:25:13.278090   31767 configset.go:348] WARNING: kubeadm cannot validate component configs for API groups [kubelet.config.k8s.io kubeproxy.config.k8s.io]
k8s.gcr.io/kube-apiserver:v1.19.6
k8s.gcr.io/kube-controller-manager:v1.19.6
k8s.gcr.io/kube-scheduler:v1.19.6
k8s.gcr.io/kube-proxy:v1.19.6
k8s.gcr.io/pause:3.2
k8s.gcr.io/etcd:3.4.13-0
k8s.gcr.io/coredns:1.7.0

ceph version
ceph version 15.2.7 (88e41c6c49beb18add4fdb6b4326ca466d931db8) octopus (stable)

ceph osd tree
ID   CLASS  WEIGHT   TYPE NAME                            STATUS  REWEIGHT  PRI-AFF
 -1         0.05846  root default                                                  
 -7         0.01949      host                           
  0    hdd  0.01949          osd.0                            up   1.00000  1.00000
 -4         0.01949      host                            
  1    ssd  0.01949          osd.1                            up   1.00000  1.00000
-10         0.01949      host                            
  2    hdd  0.01949          osd.2                            up   1.00000  1.00000
