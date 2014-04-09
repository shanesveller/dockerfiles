VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  if defined? VagrantVbguest
    config.vbguest.auto_update = false
    config.vbguest.no_install = false
  end

  config.vm.provider :virtualbox do |vb|
    vb.gui = false
    vb.customize ["modifyvm", :id, "--memory", "2048"]
  end

  config.vm.box = "boot2docker-0.8.0-belly"

  config.vm.box_url = "http://belly-vagrant.s3.amazonaws.com/boot2docker_virtualbox-0.8.0.box"

  config.vm.network :forwarded_port, guest: 80, host: 8080
end
