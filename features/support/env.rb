require "allure-cucumber"
require "capybara"
require "capybara/cucumber"

CONFIG = YAML.load_file(File.join(Dir.pwd, "features/support/config/#{ENV["CONFIG"]}"))

case ENV["BROWSER"]
when "firefox"
  @drive = :selenium
when "chrome"
  @drive = :selenium_chrome
when "fire_headless"
  @drive = :selenium_headless
when "chrome_headless"
  @drive = :selenium_chrome_headless
else
  raise "Navegador Inválido!"
end

Capybara.configure do |config|
  config.default_driver = @drive
  config.app_host = CONFIG["url"]
  config.default_max_wait_time = 10
end

AllureCucumber.configure do |config|
  config.results_directory = "/logs"
  config.clean_results_directory = true
end
