Before do
  driver.start_driver
  driver.manage.timeouts.implicit_wait = 10

  device_type = "android"
  @screen = DroidScreens.new if device_type.eql?("android")
  @screen = IOSScreens.new if device_type.eql?("ios")
end

Before("@login") do
  @user = {email: "david@tester.com", pass: "pass123"}
  @screen.home.go_account
  @screen.login.with(@user[:email], @user[:pass])
end

Before("@clean_cart") do
  @user = {email: "david@tester.com", pass: "pass123"}
  PixelApi.new.remove_my_cart(@user[:email])
end

After do
  #screenshot = driver.screenshot_as(:base64)
  #embed(screenshot, "image/png", "Screenshot")
  driver.quit_driver
end