class HomePage
  include PageObject

  #page_url 'http://localhost:5000'
  page_url 'http://178.62.5.172/'

  def check_page_title (greeting)
    expected_title = greeting
    @browser.text.should == expected_title
  end

end