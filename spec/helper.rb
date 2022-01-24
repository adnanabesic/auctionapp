require 'rspec'
require 'watir'
require 'require_all'
require_all './shared_context/'

begin
  require_all './page_objects/'
rescue
  puts 'no object found'
end

RSpec.configure do |config|
  config.before (:all) {
    @browser = Watir::Browser.new :firefox
    @main = HomePage.new(@browser)
    @browser.window.maximize
    @main.goto_abh_app
  }
  config.after(:all) {@browser.close}
end