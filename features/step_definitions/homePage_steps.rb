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
  sleep(2)
  page.all('.homecard', visible: true)
end

# Verify each result matches your criteria.
# I still need to figure out a way to check for
# anything >= 6.
# scenario outline maybe
Then /^all results contain at least "(.*)" beds$/ do |text|
  sleep(2)
  page.all('.HomeCardContainer .right .HomeStats div:nth-child(1) .value', text: text)
end

# experiment
Then /^I should see all results with a minimum of 6 beds$/ do
  sleep(2)
  result = find(:css, '[data-rf-test-id="homes-description"]').text
  split_result = result.split(' ')
  # puts split_result[1] # 17 results
  arr =[]
  page.all(:css, '.HomeCardContainer .right .HomeStats div:nth-child(1) .value').each do |el|
    num = el.text.to_i # converts to int
    if num >= 6
      arr.push(num)
    end
  end
  # puts arr
  # puts arr.length.to_s #17 results >= 6
  # now match arr.length(17) with results shown(17)
  if arr.length.to_s === split_result[1]
    puts "The search matches the exact filter results. Just can't find an assertion for it. X#"
  end
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






