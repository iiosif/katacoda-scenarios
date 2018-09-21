In this step you will install Helm Server on the cluster and you will execute your first helm commands. Please note that Helm Client is already installed.

## Task

If you check Helm's version you will see that Helm Server, also called Tiller, could not be found.

`helm version`{{execute}}

Use the following command to install Helm Server:

`helm init`{{execute}}

This might take a few seconds. Tiller is installed as a pod in the k8s cluster and you can see when Tiller is available by monitoring the pods in all namespaces:

`kubectl get pods --all-namespaces -w`{{execute}}

Once the Tiller pods is running, kill the previous command and check again Helm's version: 

`helm version` {{execute}}

Now that Tiller is up and running let's move to the next step