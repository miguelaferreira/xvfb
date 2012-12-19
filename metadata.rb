maintainer       "Locomote"
license          "BSD"
description      "Installs and configures xvfb as a service"

%w{centos ubuntu}.each do |os|
  supports os
end
