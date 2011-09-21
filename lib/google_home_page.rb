require "selenium-webdriver"
 
class GoogleHomePage
  def initialize()
    @driver = Selenium::WebDriver.for :firefox
    @driver.navigate.to "http://google.com"
  end

  def search_field 
    @driver[:name => 'q']
  end

  def search_button
    @driver[:name => 'btnG']
  end
  
  def title
    @driver.title
  end

  def close
    @driver.close
  end

end