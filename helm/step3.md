In this step you will create your first Helm chart and you will install the chart on the k8s cluster.

## Task

Let's create a Helm chart that deploys the nginx web server in the k8s cluster. This can be done very easily with the following command:

`helm create nginx-web`{{execute}}

You should have now a new folder `nginx-web`. You can take a moment to inspect the chart files before you install the chart in k8s. Use the three view on right top of the screen.

Open the file `nginx-web/values.yaml` and replace `ClusterIP` with `NodePort` for the value `service.type`. This will make the service available outside the cluster.

Helm provides 2 commands which are recommended to be used before installing a chart. `helm lint` checks the formatting of the manifest files and `helm --debug --dry-run` simulates an install. The flag `--debug` displays the output of the install in the console.

`helm lint nginx-web`{{execute}}

`helm install nginx-web --debug --dry-run`{{execute}}

Now we are ready to install the chart in k8s:

`helm install nginx-web -n nginx`{{execute}}

List all Helm/k8s applications/releases with the following command:

`helm ls`{{execute}}

Please note the columns REVISION, CHART and APP VERSION.

Execute the following command to find out the service port exposed by k8s. This port will be in the range 30000-32767.

`kubectl get --namespace default -o jsonpath='{.spec.ports[0].nodePort}{"\n"}' services nginx-nginx-web`{{execute}}

In the upper side of the terminal you have one tab called `Display 80`. Click on this tab and a new web page will open.
Under the section "Display a different port" enter the service port found with the previous command and press the button `Display port``. The ngix welcome page will appear. 

Let's move to the next step and see how we can perform an upgrade and a rollback on the Helm release.
