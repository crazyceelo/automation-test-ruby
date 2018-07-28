Given /^I am on the home page$/ do
  visit "https://redfin.com"
end
 
When /^I see the search field$/ do
  page.assert_selector('#search-box-input', visible: true)
end

Then /^I should see user name "(.*)"$/ do |text|
  page.assert_selector('[class="name"]', text: text, visible: true)
end

Then /^I should see first result$/ do
  page.find('div#MapHomeCard_0')
end

# Verify that you get results back 
Then /^I should see all results$/ do
  page.all('.homecard', visible: true)
end

# Verify each result matches your criteria.
# I still need to figure out a way to check for
# anything >= 6.
# scenario outline maybe
Then /^all results contain at least "(.*)" beds$/ do |text|
  page.all('.homecard .link-override div div div:nth-child(1) .value', text: text)
end

# experiment
Then /^I should see all results with a minimum of 6 beds$/ do
  puts page.all(:css, '.homecard .link-override div div div:nth-child(1) .value').each()
  # test = find(:css, '.homecard .link-override div div div:nth-child(1) .value').text
  # puts test
  # page.has_text?('lorem ipsum', between: 6..50)
end

When /^I should click on "(.*)"$/ do |element|
  click_on element
end

When /^I should fill in "(.*)" with "(.*)"$/ do |element, text|
  fill_in(element, :with => text)
end

When /^I should select "(.*)" from "(.*)"$/ do |string, string2|
  select(string2, :from => string, wait: 10)
end






