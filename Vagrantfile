# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
  # The most common configuration options are documented and commented below.
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.

  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://vagrantcloud.com/search.
  config.vm.box = "hashicorp/bionic64"

  #config.ssh.username = 'root'
  #config.ssh.password = 'dev'
  #config.ssh.insert_key = 'true'

  # Disable automatic box update checking. If you disable this, then
  # boxes will only be checked for updates when the user runs
  # `vagrant box outdated`. This is not recommended.
  # config.vm.box_check_update = false

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine. In the example below,
  # accessing "localhost:8080" will access port 80 on the guest machine.
  # NOTE: This will enable public access to the opened port
  # config.vm.network "forwarded_port", guest: 80, host: 8080

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine and only allow access
  # via 127.0.0.1 to disable public access
  # config.vm.network "forwarded_port", guest: 80, host: 8080, host_ip: "127.0.0.1"

  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  config.vm.network "private_network", ip: "192.168.33.10"

  # Create a public network, which generally matched to bridged network.
  # Bridged networks make the machine appear as another physical device on
  # your network.
  # config.vm.network "public_network"

  # Share an additional folder to the guest VM. The first argument is
  # the path on the host to the actual folder. The second argument is
  # the path on the guest to mount the folder. And the optional third
  # argument is a set of non-required options.
  # config.vm.synced_folder "../data", "/vagrant_data"

  # Provider-specific configuration so you can fine-tune various
  # backing providers for Vagrant. These expose provider-specific options.
  # Example for VirtualBox:
  #
  config.vm.provider "virtualbox" do |vb|
    # VirtualBox name
    vb.name = "Documents"
    # Display the VirtualBox GUI when booting the machine
    vb.gui = true

    # Customize the amount of memory on the VM:
    vb.memory = "8096"
  end
  #
  # View the documentation for the provider you are using for more
  # information on available options.

  # Enable provisioning with a shell script. Additional provisioners such as
  # Ansible, Chef, Docker, Puppet and Salt are also available. Please see the
  # documentation for more information about their specific syntax and use.
  config.vm.provision "shell", inline: <<-SHELL
    apt-get update
    apt-get install -y curl wget

    apt install -y apt-transport-https ca-certificates curl software-properties-common

    apt-key adv --fetch-keys https://download.docker.com/linux/ubuntu/gpg
    add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
    add-apt-repository ppa:longsleep/golang-backports
    apt-add-repository ppa:fish-shell/release-3

    apt update
    apt install -y git tig docker-ce golang-go gnome-tweak-tool ubuntu-desktop etcd fish

    go get github.com/rancher/dapper

    gsettings set org.gnome.shell.extensions.dash-to-dock hot-keys false

  SHELL

  # wget https://get.helm.sh/helm-v3.2.0-linux-amd64.tar.gz

  # https://github.com/kubernetes-sigs/kustomize/releases/download/kustomize%2Fv3.5.4/kustomize_v3.5.4_linux_amd64.tar.gz

  # snap install intellij-idea-ultimate --classic

  # todo
  #
  # https://github.com/rancher/rancher/wiki/Setting-Up-Rancher-2.0-Development-Environment
  # checkout https://github.com/rancher/rancher.git
  #
  # git clone https://github.com/rancher/$1.git ~/$1/src/github.com/rancher/$1
  # for i in rancher rke k3s ui k3d; do git clone --depth=1 https://github.com/rancher/$i.git ~/$i/src/github.com/rancher/$i ; done
  #
  # ssh key for gitlab?
  #
  # intellij needs higher file watch
  # echo fs.inotify.max_user_watches = 524288 >> /etc/sysctl.conf
  #
  #
end

