name              "cookbook-omnibus-openstack"
maintainer        "Craig Tracey <craigtracey@gmail.com>"
license           "Apache 2.0"
description       "Cookbook for supporting omnibus-openstack"
long_description  IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version           "1.0.0"

recipe            "omnibus-openstack::build-packages", "Installs packages necessary for building omnibus-openstack packages"

%w{ ubuntu fedora redhat centos }.each do |os|
  supports os
end
