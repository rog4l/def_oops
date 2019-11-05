Vagrant.configure("2") do |config|
  config.vm.define "webserver" do |web|
    web.vm.box = "ubuntu/trusty64"
    web.vm.network :forwarded_port, guest: 8000, host: 1112
    web.vm.provision :ansible_local do |ansible|
      ansible.playbook = "provisioning/playbook.yml"
      ansible.verbose = 'v'
    end
  end
end
