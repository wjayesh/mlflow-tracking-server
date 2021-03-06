# MLflow Tracking Server on Kubernetes π:  A customizable and flexible solution β¨

This repository hosts the code to make it easier to deploy an MLflow tracking server to your Kubernetes cluster. 

## Project Structure πΊοΈ

* `scripts` directory has the entrypoint that is executed when the image defined by the Dockerfile is run.
* The Dockerfile specifies the recipe for building the image. 

## Contributions Welcome! ππ₯°

The script inside the `scripts` folder currently has options for adding the metadata store and the artifact store.
It can be expanded to include the flags
- `--serve-artifacts` ([learn more](https://www.mlflow.org/docs/latest/tracking.html#scenario-5-mlflow-tracking-server-enabled-with-proxied-artifact-storage-access))
- `--artifacts-only` ([learn more](https://www.mlflow.org/docs/latest/tracking.html#scenario-6-mlflow-tracking-server-used-exclusively-as-proxied-access-host-for-artifact-storage-access))


## Blog βοΈ

A detailed idea behind this repository and the steps to execute it in a cloud environment can be obtained from this blog post that I wrote on my experience building a solution like this.

Read it here π§βπ»: [Not just another MLflow on Kubernetes article](https://dev.to/wjayesh/not-just-another-mlflow-on-kubernetes-article-2522)
