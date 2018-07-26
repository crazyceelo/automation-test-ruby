Given /^I am on the home page$/ do
  visit "https://redfin.com"
end
 
Then /^I should see "(.*)"$/ do |text|
  page.has_content?(text)
end

Then /^I should click on "(.*)"$/ do |element|
  click_on element
end

Then /^I should fill in "(.*)" with "(.*)"$/ do |element, text|
  fill_in(element, :with => text)
end

Then /^I should select "(.*)" from "(.*)"$/ do |string, string2|
  select(string2, :from => string)
end

# Verify that you get results back 


# Verify each result matches your criteria.

