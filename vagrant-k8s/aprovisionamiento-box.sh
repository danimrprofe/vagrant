    

    
    # install docker v17.03
    # reason for not using docker provision is that it always installs latest version of the docker, but kubeadm requires 17.03 or older
    
    # Agregamos el repositorio para poder descargar kubernetes
    curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -
    apt-add-repository "deb http://apt.kubernetes.io/ kubernetes-xenial main"

    # Actualizamos lista de paquetes
    apt update

    # Instalamos los paquetes necesari
    apt install -y apt-transport-https ca-certificates curl software-properties-common
    apt install -y docker.io
    apt-get install -y kubelet kubeadm kubectl
    

    # run docker commands as vagrant user (sudo not required)
    usermod -aG docker vagrant
    systemctl enable docker

  

    
    # ip of this box
    IP_ADDR=`ifconfig enp0s8 | grep Mask | awk '{print $2}'| cut -f2 -d:`
    # set node-ip
    sudo sed -i "/^[^#]*KUBELET_EXTRA_ARGS=/c\KUBELET_EXTRA_ARGS=--node-ip=$IP_ADDR" /etc/default/kubelet
    sudo systemctl restart kubelet