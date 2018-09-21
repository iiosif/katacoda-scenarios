In this step you will add a chart registry to your Helm installation.

## Task

Add Talend's Helm charts registry:

`helm repo add talend https://talendregistry.jfrog.io/talendregistry/tlnd-helm-kickoff-2018 --username kickoff-user-ro --password <thepassword>`{{execute}}

List your Helm charts registries:

`helm repo list`{{execute}}

List the charts from your `talend` registry:

`helm search talend`{{execute}}

If you want to find out what else `helm repo` can do, execute the following command:

`helm repo --help`{{execute}}

Let's go to the real stuff now :-)