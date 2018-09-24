In this step you will learn how to upgrade and rollback changes on a Helm release.

## Task

You will start by checking the number of running pods:

`helm get pods`{{execute}}

You can see that only one pod is running. 

Open the file nginx-web/values.yaml and change the value `replicaCount` from 1 to 2.
Then open the file nginx-web/Chart.yaml an change the field `version` from 0.1.0 to 0.1.1.

You are now ready to upgrade the Helm release that you created in the previous step. 

`helm upgrade nginx nginx-web`{{execute}}

Check again the release information by executing:

`helm ls`{{execute}}

You can see that the fields REVISION and CHART have been modified. 
This means that you should have now two pods running. Check that again:

`helm get pods`{{execute}}

To view the full release history execute the following command.

`helm history nginx`{{execute}}

Let's see now what happens if we rollback to revision 1:

`helm rollback nginx 1`{{execute}}

Execute `helm history nginx`{{execute}} and `helm get pods`{{execute}}

The REVISION field is incremented to 3 but the chart version is the same as in revision 1

You should now also have only one pod running: 

`helm get pods`{{execute}}

You have successfuly upgraded and rollbacked a release. Now you can delete the release before we move to the next step:

`helm delete --purge nginx`{{execute}}

This command removes the release and all k8s objects belonging to it.