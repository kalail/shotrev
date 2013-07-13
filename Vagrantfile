Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu"
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"
  config.vm.synced_folder "salt//", "/srv/salt/"

  config.vm.define :web do |web|
    web.vm.synced_folder "salt/srv/", "/srv/"
    web.vm.provision :salt do |salt|
      salt.minion_config = "salt/minion.conf"
      salt.run_highstate = true
    end
    # web.vm.provision :shell, :path => "bootstrap.sh"
    # web.vm.network :forwarded_port, host: 4567, guest: 80
  end

end
