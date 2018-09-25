In this step you will add a chart registry to your Helm installation.

## Task

Let's look first at what registries are avaible from our Helm client:

`helm repo list`{{execute}}

Helm installs the official k8s chart registry called `stable` and also a local chart registry called `local`.

Now let's add another repositry to our Helm client. Copy the following command and paste it into the terminal. Then replace `<password>` with the right password and press enter:

`helm repo add talend https://talendregistry.jfrog.io/talendregistry/tlnd-helm-kickoff-2018 --username kickoff-user-ro --password <thepassword>`

Execute again `helm repo list`{{execute}} and see the new `talend` registry in the list.

You can now list the charts from your `talend` registry:

`helm search talend`{{execute}}

If you want to find out what else `helm repo` can do, execute the following command:

`helm repo --help`{{execute}}

Let's go to the next step and learn how we can fetch a chart from a registry.