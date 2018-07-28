Given /^I am on the home page$/ do
  visit "https://redfin.com"
end
 
Then /^I should see "(.*)"$/ do |text|
  page.has_content?(text)
end

Then /^I should see first result$/ do
  page.find('div#MapHomeCard_0')
end

Then /^I should see all results$/ do
  page.all('.homecard', visible: true)
end

Then /^all results contain at least "(.*)" beds$/ do |text|
  page.all('.homecard', text: text)
end

When /^I should click on "(.*)"$/ do |element|
  click_on element
end

When /^I should fill in "(.*)" with "(.*)"$/ do |element, text|
  fill_in(element, :with => text)
end

When /^I should select "(.*)" from "(.*)"$/ do |string, string2|
  select(string2, :from => string)
end

# Verify that you get results back 


# Verify each result matches your criteria.

