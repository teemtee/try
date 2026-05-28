# Setup

1. Have appropriate Mac OSX system ready to run this test on
2. Obtain the azure credentials and login to Azure
3. Obtain the pull secret

# Test

## Step
Launch the environment by running the installer from mac OS.
```bash
bin/openshift-install create cluster   --dir=./my_cluster --log-level=debug
```

## Expect
The installer runs and goes into interactive mode.

## Step
Enter the following values in the interactive mode of the installer and follow the log output

```
SSH Public Key << /path_to/id_rsa.pub >>
Platform azure
Region << azure region >>
Base Domain qe.azure.devcluster.openshift.com
Cluster Name << the name of the cluster you want to give >>
Pull Secret  <<json string of pull secret>>
```

## Expect
The installer finishes and an OCP cluster is installed.

## Step
Do some health check for your fresh cluster, refer to cluster health check doc.

## Expect
Cluster is healthy.

# Cleanup

Destroy the cluster by running `openshift-install destroy cluster`
```
$ bin/openshift-install destroy cluster --dir ~/clusters-azure-esimard
INFO deleted                                       record=api.esimard-testcase
INFO deleted                                       record="*.apps.esimard-testcase"
INFO deleted                                       resource group=esimard-testcase-s92fq-rg
```

Make sure the cluster is terminated, related Resources / Resource Group on IaaS also be destroyed, including all storage account disks on Azure. You could look at your IaaS's management web console directly to check that.

For azure, you will need to verify DNS entries in the qe.azure.devcluster.openshift.com zone which are outside of the Resource Group


