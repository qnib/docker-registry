# docker-registry

QNIBTerminal version of a docker-registry.

## Prepare machine

If you do not want to screw around with ssl [yet], create your docker machine with the option to open up insecure registries for the VM subnet.

```
machine create -d virtualbox --virtualbox-disk-size 100000 --virtualbox-memory 12000 --virtualbox-cpu-count 4 --engine-insecure-registry 192.168.99.0/24 default
```
