maintainer   "Locomote"
license      "BSD"
description  "Installs and configures xvfb as a service"
version      "0.2"

%w{centos ubuntu}.each do |os|
  supports os
end
