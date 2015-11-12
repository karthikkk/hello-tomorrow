Given(/^I am a hello user$/) do
  puts "hello world"
end


When(/^I  open the browser$/) do
  visit_page HomePage
end

When(/^I got to hello website$/) do
     puts "hello world"
end

Then(/^I should see the greeting '(.*)'$/) do |greeting|
on_page HomePage do |page|
  page.check_page_title (greeting)
end
end