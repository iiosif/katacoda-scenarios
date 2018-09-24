In this step you will create your first Helm chart and you will install the chart on the k8s cluster.

## Task

Let's create a Helm chart that deploys the nginx web server in the k8s cluster. This can be done very easily with the following command:

`helm create nginx-web`{{execute}}

You should have now a folder `nginx-web`. You can take a moment to inspect the chart files before you install the chart in k8s.

Open the file `nginx-web/values.yaml` and replace `ClusterIP` with `NodePort` for the value `service.type`. This will make the service available outside the cluster.

Now install the chart in k8s 

`helm install nginx-web -n nginx`{{execute}}

List all Helm/k8s applications/releases with the following command:

`helm ls`{{execute}}

Execute the following command to find out the service port exposed by k8s. This port will be in the range 30000-32767.

`kubectl get --namespace default -o jsonpath='{.spec.ports[0].nodePort}{"\n"}' services nginx-nginx-web`

In the upper side of the terminal you have one tab called `Display 80`. Click on this tab and a new web page will open.
Under the section "Display a different port" enter the service port found with the previous command and press the button `Display port``. The ngix welcome page will appear. 

You can now delete the application from k8s with the following command:

`helm delete --purge nginx`{{execute}}