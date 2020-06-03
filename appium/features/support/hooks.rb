require "base64"
require "net/smtp"
require "time"
require "report_builder"
require_relative "../../Rakefile.rb"

Before do
  driver.start_driver
  driver.manage.timeouts.implicit_wait = 10
end

After do
  shot_file = page.save_viewport_screenshot("log/screenshot.png")
  shot_b64 = Base64.encode64(File.open(shot_file, "rb").read)
  embed(shot_b64, "image/png", "Screenshot")
  driver.quit_driver
end

at_exit do
  ReportBuilder.input_path = "log/report.json"
  ReportBuilder.configure do |config|
    config.report_types = [:json, :html]
    options = {
      report_title: "Automação Mobile Ninja Pixel",
    }
    ReportBuilder.build_report options
  end
end
