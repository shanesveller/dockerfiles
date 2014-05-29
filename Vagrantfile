VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.define 'base' do |base|
    base.vm.provider 'docker' do |d|
      d.build_dir = 'base'
      d.build_args = %w(-t shanesveller/base:0.9.10)
      d.cmd = %w(/bin/true)
      d.remains_running = false
    end
  end

  config.vm.define 'passenger' do |passenger|
    passenger.vm.provider 'docker' do |d|
      d.build_dir = 'passenger-base'
      d.build_args = %w(-t shanesveller/passenger-base:0.9.10)
      d.cmd = %w(/bin/true)
      d.remains_running = false
    end
  end

  config.vm.define 'octopress' do |octopress|
    octopress.vm.provider 'docker' do |d|
      d.image = 'shanesveller/octopress-blog'
      d.ports = ['8080:80']
    end
  end

  config.vm.define 'kibana' do |kibana|
    kibana.vm.provider 'docker' do |d|
      d.build_dir = 'kibana'
      d.build_args = %w(-t shanesveller/kibana)
      d.ports = ['9200:9200']
    end
  end
end
