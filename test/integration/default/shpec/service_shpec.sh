describe "xvfb"
  it "should start the service"
    ps ax | grep [X]vfb
    assert equal "$?" 0

  it "should install an init script"
    assert file_present /etc/init.d/xvfb

end_describe
