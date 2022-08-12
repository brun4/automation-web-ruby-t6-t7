require 'capybara/cucumber'
require 'capybara/rspec'
require 'selenium-webdriver'
require 'site_prism'
require 'pry'

ENVIRONMENT = ENV['ENVIRONMENT']
puts "ENVIRONMENT is running >>> #{ENVIRONMENT}"

CONFIG = YAML.load_file(File.dirname(__FILE__) + "/environments/#{ENVIRONMENT}.yml")
World(Helper)
World(Pages)

Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  config.app_host = CONFIG['url_default']
  config.default_max_wait_time = 10
end