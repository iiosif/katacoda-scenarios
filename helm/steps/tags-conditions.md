In this step you will learn about tags and conditions, which are a means to enable and disable chart dependencies.

## Task

The `talend-infrastructure` chart has 5 dependencies and by default they are all disabled.
Look again at `talend-infrastructure/requirements.yaml` and especially pay attention to the fields `condition` and `tags`.
Then look at `talend-infrastructure/values.yaml` to see the default values for the tags. The condition `global.infra.enabled` is not defined at all.

Default values can be overriden at install time either by specifying a new values file with the `-f` parameter or 
by specifying an new individual value with the `--set` parameter.

Let's enable the `talend-posgresql` dependency by using the `--set` parameter:

`helm install talend-infrastructure -n infra --set tags.talend-postgresql=true`{{execute}}

*Alternatively, you can use a new values file as follows:*

*`helm install talend-infrastructure -n infra -f values-standalone.yaml`*

Check the status of the release with `helm ls`. PostgreSQL is now up and running inside the k8s cluster.

Do you remember how to check what pods are available in k8s? What about how to attach to a pod and run a command? 
Attach to the `infra-postgresqlembedded-*` pod and run the following command:

`psql postgres master-user`

Check the solution below for the right commands.

<details><summary>Solution</summary>
<p>
`kubectl get pods`
<br/>
`kubectl exec -it <infra-postgresqlembedded-*> psql postgres master-user`
<br/>
`\q - exit from psql`
</p>
</details>
