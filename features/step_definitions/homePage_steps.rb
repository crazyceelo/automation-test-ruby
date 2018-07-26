Given /^I am on the home page$/ do
  visit "https://redfin.com"
end
 
Then /^I should see "(.*)"$/ do |text|
  page.has_content?(text)
end

Then /^I should click on "(.*)"$/ do |element|
  click_on element
end

# Then /^I should fill in "(.*)" with "(.*)" and I should fill in "(.*)" with "(.*)"$/ do |element, text, element2, text2 |
#   fill_in('Email', :with => 'solracias@hotmail.com')
#   fill_in("Password", :with => 'Password101!')
# end

Then /^I should fill in "(.*)" with "(.*)"$/ do |element, text|
  fill_in(element, :with => text)
end
