require "report_builder"
require "date"

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
  # encoded_img = driver.screenshot_as(:base64)
  # embed(encoded_img, "image/png", "Screenshot")

  driver.quit_driver
end

at_exit do
  @info = {
     'device' => "Android", 
     "enviromment" => "QA", 
     "Data do Teste" => "#{DateTime.now}"
    }

  ReportBuilder.configure do |config|
    config.report_title = "Pixel Mobile"
    config.input_path = "logs/report.json"
    config.report_path = "logs/report"
    config.report_types = [:html]
    config.color = "indigo"
    config.additional_info = @info
  end
  ReportBuilder.build_report
end