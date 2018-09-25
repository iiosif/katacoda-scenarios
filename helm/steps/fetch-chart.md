In this step you will learn how to fetch a chart from a remote registry.

## Task

In the previous step you have added `talend` registry to your Helm client which contains a chart called `talend-infrastructure`. Before we download the chart, let's look at some details of this chart. You can do this with the command:

`helm search talend/talend-infrastructure`{{execute}}

Use the following command to fetch the `talend-infrastructure` chart and in the same time unpack it in the current folder:

`helm fetch --untar talend/talend-infrastructure`{{execute}}

The command above has created a `talend-infrastructure` folder inside the current folder.

To check if the chart can be installed, simulate an install and display the output in the terminal. Use `infra` as Helm Release name.

<details><summary>Solution</summary>
<p>
`helm install talend-infrastructure -n infra --debug --dry-run`{{execute}}
<br/>
</p>
</details>

The chart is missing dependencies. You can list the chart's dependencies with the following command:

`helm dep ls`{{execute}}

Take a look at `talend-infrastructure/requirements.yaml` to see where dependencies are defined.

Now take a look at `talend-infrastructure/charts` and see if any dependency is available.

Update the chart's dependecies with the following command:

`helm dep up`{{execute}}

And now look again at the `talend-infrastructure/charts` folder.

Simulate again the install and then proceed to install the chart in k8s.

<details><summary>Solution</summary>
<p>
`helm install talend-infrastructure -n infra`{{execute}}
<br/>
</p>
</details>
