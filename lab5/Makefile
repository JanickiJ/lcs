build_image:
	docker build -t lcs5.1

run_container:
	docker run --it --rm -v /home/jakubj/code/lcs/lab5/.aws/:/root/.aws lcs5.1 /bin/sh

init_cluster:
	kind create cluster --name lcs-5-k8s-cluster

delete_cluster:
	kind delete cluster -n lcs-5-k8s-cluster

helm_install:
	helm repo add nfs-ganesha-server-and-external-provisioner https://kubernetes-sigs.github.io/nfs-ganesha-server-and-external-provisioner/
	helm install lcs-5-release nfs-ganesha-server-and-external-provisioner/nfs-server-provisioner --set=storageClass.name=lcs-5-nfs-storage

start_cluster: init_cluster helm_install
	kubectl apply -f lcs5_pvc.yaml
	kubectl apply -f lcs5_deployment.yaml
	kubectl apply -f lcs5_service.yaml
	kubectl	apply -f lcs5_job.yaml
