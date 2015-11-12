require 'watir-webdriver'

caps = Selenium::WebDriver::Remote::Capabilities.firefox
caps.platform = 'Windows 7'
caps.version = ''
caps['browserName'] = 'Chrome'
caps[:name] = "Testing EK on Sauce"

#browser = Watir:Browser.new :firefox

browser = Watir::Browser.new(
    :remote,
    :url => "http://ektest:b175a6fb-08d1-4bd2-ac7c-49a465fed465@ondemand.saucelabs.com:80/wd/hub",
    :desired_capabilities => caps)

Before ('~@headless') do
  @browser = browser
  @browser.cookies.clear
end

at_exit do
  browser.close unless browser.nil?
end