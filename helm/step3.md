In this step you will create your first Helm chart and you will install the chart on the k8s cluster.

## Task

Let's create a Helm charts which deploys the nginx web server in the k8s cluster. This can be done very easily with the following command:

`helm create nginx-web`{{execute}}

You should have now a folder `nginx-web`. You can take a moment to inspect the chart files before you install the chart in k8s.

*Optional: Open the file `nginx-web/values.yaml` and replace `ClusterIP` with `NodePort` for the values `service.type`.*

Now install the chart in k8s 

`helm install nginx-web -n nginx`{{execute}}

Follow the instructions displayed in the terminal to access the nginx web server from a web browser.

List all installed applications with the following command:

`helm ls`{{execute}}

Delete the application from k8s with the following command:

`helm delete --purge nginx`{{execute}}