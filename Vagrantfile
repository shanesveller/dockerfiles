VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  # These are specific to my laptop since I use the `vagrant-vbguest` plugin
  config.vbguest.auto_update = false
  config.vbguest.no_install = false

  config.vm.box = "boot2docker-0.4"

  config.vm.box_url = "https://github.com/mitchellh/boot2docker-vagrant-box/releases/download/v0.4.0/boot2docker.box"

  config.vm.network :forwarded_port, guest: 4243, host: 4243
  config.vm.network :forwarded_port, guest: 80, host: 8080
end
