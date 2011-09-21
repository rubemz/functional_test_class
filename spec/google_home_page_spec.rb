require "spec_helper.rb"
require "google_home_page.rb"

describe "Google Home Page" do 

	before :each do 
	  @page = GoogleHomePage.new()	  
	end

	after :each do 
	  @page.close
	end

	it'should searh hello world with google using docmain based script' do	  
	  @page.search_field.send_keys('hello world')
	  @page.search_button.click
	  Selenium::WebDriver::Wait.new.until { @page.title.match("hello world") }
	  @page.title.should match('hello world')	  	  
	end

	it'should searh hello world with google using docmain based script' do	  
	  @page.search_field.send_keys('puc rs')
	  @page.search_button.click
	  Selenium::WebDriver::Wait.new.until { @page.title.match("puc rs") }
	  @page.title.should match('puc rs')	  
	  
	end

end