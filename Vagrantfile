Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu"
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"

  config.vm.define :web do |web|
    web.vm.synced_folder "salt/roots/", "/srv/"
    web.vm.synced_folder "shotrev/", "/home/vagrant/shotrev/"
    web.vm.network :forwarded_port, host: 8000, guest: 8000
    
    web.vm.provision :salt do |salt|
      salt.minion_config = "salt/minion.conf"
      salt.verbose = true
      salt.run_highstate = true
    end

    # web.vm.provision :shell, :path => "bootstrap.sh"
  end

end
