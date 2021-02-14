images=(  
    kube-apiserver:v1.19.4
    kube-controller-manager:v1.19.4
    kube-scheduler:v1.19.4
    kube-proxy:v1.19.4
    pause:3.2
    etcd:3.4.13-0
    coredns:1.7.0
)

for imageName in ${images[@]} ; do
    docker pull registry.aliyuncs.com/google_containers/$imageName
    docker tag registry.aliyuncs.com/google_containers/$imageName k8s.gcr.io/$imageName
    docker rmi registry.aliyuncs.com/google_containers/$imageName
done  
