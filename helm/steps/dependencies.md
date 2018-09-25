In this step you will learn how to check for chart dependencies and how to update chart dependencies.

## Task

Let's install now the chart `talend-infrastructure` which you have fetched and untarred in the current folder.

To check if the chart can be installed, simulate an install and display the output in the terminal. Use `infra` as Helm Release name.
See if you can do this on your own before you look at the solution below. *But don't feel discouraged if you can't. :-)*

<details><summary>Solution</summary>
<p>
`helm install talend-infrastructure -n infra --debug --dry-run`{{execute}}
<br/>
</p>
</details>

The chart is missing dependencies. You can list the chart's dependencies with the following command:

`helm dep ls talend-infrastructure`{{execute}}

Take a look at `talend-infrastructure/requirements.yaml` to see where and how dependencies are defined.

Now take a look at `talend-infrastructure/charts` and see if any dependency is available.

Update the chart's dependecies with the following command:

`helm dep up talend-infrastructure`{{execute}}

And now look again at the `talend-infrastructure/charts` folder.

Simulate again the install and then proceed to install the chart in k8s. Do you remember the command for installing a chart?

<details><summary>Solution</summary>
<p>
`helm install talend-infrastructure -n infra`{{execute}}
<br/>
</p>
</details>

Unfortunately that install has failed because, by default, the infrastructure chart doesn't create any objects. 
You will have to explicitly set which infrastructure service you want to create. 
This can be done through tags and/or conditions which we are going to tackle down in the next step. 

However, even if the installed has failed, Helm has created a release which we need to delete. 
Try to list existig releases and delete the `infra` one.

<details><summary>Solution</summary>
<p>
`helm ls`{{execute}}
<br/>
`helm delete --purge infra`{{execute}}
<br/>
</p>
</details>