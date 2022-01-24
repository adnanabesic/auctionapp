require_relative '../spec/helper'

class HomePage
  def initialize(browser)
    @browser = browser
  end

  def goto_abh_app
    @browser.goto('https://auction-app-abh-internship.herokuapp.com/')
  end

  def methods
    return Methods.new(@browser)
  end

  def regression_methods
    return RegressionMethods.new(@browser)
  end
end