In this step you will learn how to check the status and the configuration of your k8s cluster.

## Task

First you need to make sure that your cluster is running, so please run:

`kubectl cluster-info`{{execute}}

Then you can query the K8s API to find out the nodes running in the cluster:

`kubectl get nodes`{{execute}}

Then you can look at what is a node, you can see the details of the virtual machine used for the nodes: 

* The number of CPUs
* The amount of memory allocated
* The OS running 
* The resources requested explicitly by the PODs 

`kubectl describe node node01`{{execute}}


## Configuration
Clone the following repository with the next command

`git clone https://github.com/iiosif/katacoda-scenarios.git; mv katacoda-scenarios/kubernetes/assets/ talend; rm -rf katacoda-scenarios`{{execute}}


Since we have two terminals, let's setup the second terminal to always display the current states of several k8s objects (e.g. Pods and Services) running in the k8s cluster. In the upper terminal execute the following command:

`kubectl get nodes master -o jsonpath='{.status.addresses[0].address}{"\n"}'`{{execute}}

Grab the IP address and replace it in the following command:

!!! WARNING, this has to be run in the bottom terminal
`mkdir .kube; scp <ip adress>:/root/.kube/config /root/.kube/config; watch kubectl get po,svc,cm,deploy`

Then copy/paste the command in the bottom terminal and execute it.

