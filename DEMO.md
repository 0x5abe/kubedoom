# Self-healing DEMO

This short document is a guide for running the self-healing demo with Kubernetes and kind.

## Cloning the repo

This repo must be cloned since it contains the scripts for running the demo. It can be cloned with `git clone https://github.com/0x5abe/kubedoom.git`.

## Installing docker

An installation of docker is needed to be able to run kind. 
For this purpose the [official install guide](https://docs.docker.com/engine/install/) for docker can be followed.

## Installing kind

Kind provides a way to run a Kubernetes cluster locally through the usage of docker containers.
The [kind install guide](https://kind.sigs.k8s.io/docs/user/quick-start#installation) can be followed. The folder containing kind.exe must be added to the PATH environment variable in case it's not done automatically.

## Installing kubectl

Kubectl must be installed to interact with the Kubernetes cluster, the official documentation provides an [install guide](https://kubernetes.io/docs/tasks/tools/install-kubectl-windows/) on doing so.

## Downloading and setting up cloud-provider-kind

To be able to run a LoadBalancer service with kind, there's an external program that must be run to do so. The installation process is expained in an [install guide](https://kind.sigs.k8s.io/docs/user/loadbalancer/#installing-cloud-provider-kind). The folder which contains cloud-provider-kind.exe must be added to the PATH environment variable so that the provided script can run it.

## Installing a VNC client

To be able to access kubedoom a VNC client is needed. For the demo tested [RealVNC Viewer](https://www.realvnc.com/en/connect/download/viewer/) was used.

## Running the script and opening the kubedoom instances

With everything already installed, the powershell script `ripandtear.ps1` can be executed to set up the cluster correctly, the script will print the state of all pods to the console each second, to see the self-healing aspect in action. After that the VNC client can be used to connect to the running DOOM instances, one of them will be in port **5900**, the other in **5901** and the last one in port **5902**. The password for the VNC connection is `idbehold`.

Once inside the game the monsters corresponding to the pods are outside in the courtyard. Cheats `idspispopd` and `idkfa` can be used to walk through walls and gain access to all weapons to quickly test killing the monsters.