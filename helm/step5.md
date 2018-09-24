In this step you will learn how to fetch a chart from a remote registry.

## Task

In step 2 you used the command `helm repo list` to view all charts registries available for your Helm Client. One of those registries was `stable`. 
Let's search for a `redis` chart in this registry:

`helm search stable/redis`{{execute}}

Use the following command to fetch the `redis` chart and in the same time unpack it in the current folder:

`helm fetch --untar stable/redis`{{execute}}

The command above has created a `redis` folder inside the current folder.

You can now use the `redis` chart and you can take a few minutes to practice some of the commands you have learned in this workshop.

!!! to be continued