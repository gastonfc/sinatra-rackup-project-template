Given(/^I load the site$/) do
  visit '/index.html'
end

Then(/^I can view the start page$/) do
  step 'I should see "PRODUCT CATALOGUE"'
end

