# -*- mode: ruby -*-
# # vi: set ft=ruby :

ENV['VAGRANT_DEFAULT_PROVIDER'] ||= 'docker'
 
Vagrant.configure("2") do |config|
#  config.vm.network "private_network", ip: "192.168.10.10"
#  config.vm.synced_folder ".", "/data", type: "nfs", :mount_options => ['nolock,vers=3,udp']

  config.vm.define "xn" do |a|
    a.vm.provider "docker" do |d|
      d.build_dir = "."
      d.build_args = ["-t=vertxdev"]
      d.ports = ["8080:8080"]
      d.name = "vertxdev"
      d.remains_running = true
      d.cmd = ["vertx", "run", "vertx-examples/src/raw/java/httphelloworld/HelloWorldServer.java"]
      d.volumes = ["/src/vertx/:/usr/local/src"]
    end
  end
end
