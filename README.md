# vagrant

Pruebas con vagrant. Versión de pruebas: Vagrant 2.2.3

Para conocer la versión de Vagrant instalada:
```
vagrant version
```
Podemos consultar las boxes que hay publicadas en: https://app.vagrantup.com/boxes/search

Para descargar una box de una máquina virtual concreta:
```
vagrant box ubuntu/precise64
```
Creamos una carpeta para guardar los archivos de configuración, y una vez dentro inicializamos vagrant en esta carpeta:
```
vagrant init
```
Nos ha creado el archivo Vagrantfile que procederemos a adaptar a nuestras necesidades.

Podemos listar las boxes que tenemos descargadas utilizando:
```
vagrant box list
```
Podemos conectar a la máquina con la un comando SSH de vagrant:
```
vagrant ssh
```
Mágicamente se nos meterá por ssh en la MV, sin pedir contraseña. Una vez dentro podemos hacer lo que queramos.

Salimos con
```
exit
```
Para cerrar la máquina virtual por las buenas:
```
vagrant halt
```
Lo volvemos a levantar con 
```
vagrant up
```
Todas las configuraciones se guardan en una carpeta oculta llamada .vagrant.

Para destruir la máquina virtual (veremos que ya no aparece en Virtualbox)

```
vagrant destroy
```
#Aprovisionamiento
## shell
To-do
## script
To-do
## ansible
To-do
