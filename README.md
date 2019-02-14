# Carpetas

## vagrant-ansible
La idea es aprovisionar máquinas virtuales a través de un playbook de ansible.

## vagrant-mult
Automatizar el aprovisionamiento de varias MV en un único Vagrantfile

## vagrant-wordpress
Automatizar y aprovisionar una MV con wordpress

# vagrant

Pruebas con vagrant. Versión de pruebas: Vagrant 2.2.3

Para conocer la versión de Vagrant instalada:
```
vagrant version
```
## Descargando boxes

Podemos consultar las boxes que hay publicadas en: https://app.vagrantup.com/boxes/search

Para descargar una box de una máquina virtual concreta:
```
vagrant box ubuntu/precise64
```
Podemos listar las boxes que tenemos descargadas. Si una box no está descargada pero hacemos un vagrant up se descargará la primera vez.
```
vagrant box list
```
## Inicializando configuraciones (Vagrantfile)

Creamos una carpeta para guardar los archivos de configuración, y una vez dentro inicializamos vagrant en esta carpeta:
```
vagrant init
```
Nos ha creado el archivo Vagrantfile que procederemos a adaptar a nuestras necesidades. Para hacer un init no tiene que existir ningún Vagrantfile.

Una vez definido el vagrantfile ya podemos levantar la/s MV:
```
vagrant up
```
Podemos ver qué MV tenemos levantadas con:
```
vagrant status
```
## Conectando con las máquinas virtuales

Podemos conectar a la máquina con la un comando SSH de vagrant. Otra opción es desocultar la MV (que habrá arrancado en Virtualbox en modo oculto), o bien tirar de putty.
```
vagrant ssh
```
Mágicamente se nos meterá por ssh en la MV, sin pedir contraseña. Una vez dentro podemos hacer lo que queramos.

Si solo tenemos una MV levantada, se conectará a esta. Si tenemos más de una, pedirá el nombre de la MV. 

Salimos con
```
exit
```
## Parando máquinas

Para cerrar las máquinas virtuales por las buenas:
```
vagrant halt
```
Las podemos volver a levantar con un up.

Para destruir la máquina virtual (veremos que ya no aparece en Virtualbox)

```
vagrant destroy
```

## Configuraciones de Vagrant

Todas las configuraciones se guardan en una carpeta oculta llamada .vagrant. Estas configuraciones se pueden subir a github y llevar un control de versiones, al ser la configuración guardada en archivos de texto plano.

Las boxes se meten en la carpeta que tengamos definida en Virtualbox para almacenar las MV.

# Aprovisionamiento
## shell
To-do
## script
To-do
## ansible
To-do
