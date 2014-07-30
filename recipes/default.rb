case node.platform
when "ubuntu" then
  %w(xserver-xorg-core xvfb)
when "centos" then
  %w(xorg-x11-server-Xvfb mesa-libGL)
end.each { |pkg| package(pkg) { action :install } }

template "/etc/init.d/xvfb" do
  source "xvfb.sh.erb"
  mode 00755
  variables(
    :display => node[:xvfb][:display],
    :screen_number => node[:xvfb][:screen][:number],
    :screen_resolution => node[:xvfb][:screen][:resolution],
    :other_args => node[:xvfb][:other_args]
  )
  notifies(:restart, "service[xvfb]")
end

service "xvfb" do
  action [:enable, :start]
end
