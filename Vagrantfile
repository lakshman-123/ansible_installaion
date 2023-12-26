Vagrant.configure("2") do |config|

  # Control node with desktop environment
  config.vm.define "controlnode" do |node|
    node.vm.box = "lakshman1886/Rocky"
    node.vm.network "private_network", ip: "192.168.0.112" , virtualbox__intnet: "ansiblecluster"
    node.vm.provider "virtualbox" do |vb|
      vb.gui = true
      vb.memory = 2048
      vb.cpus = 4
      vb.name = "controlnode"
    end
    node.vm.provision "shell", path: ".\\sh\\controlnode.sh" 
  end

  # Managed nodes (headless)
  (1..2).each do |i|
    config.vm.define "managednode#{i}" do |node|
      node.vm.box = "ubuntu/focal64"
      node.vm.network "private_network", ip: "192.168.0.#{i+112}" , virtualbox__intnet: "ansiblecluster"
      node.vm.provider "virtualbox" do |vb|
        vb.memory = 1024
        vb.cpus = 2
        vb.name = "managednode#{i}"
      end
      node.vm.provision "shell", path: ".\\sh\\managednode.sh"
    end
  end

end
