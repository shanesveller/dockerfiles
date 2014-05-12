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

  config.vm.box = "mitchellh/boot2docker"

  config.vm.network :forwarded_port, guest: 80, host: 8080
  config.vm.network :forwarded_port, guest: 64738, host: 64738
end
