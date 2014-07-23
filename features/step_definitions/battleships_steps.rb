Given(/^I am on the homepage$/) do
	visit('/')
end

When(/^I follow "(.*?)"$/) do |arg1|
  	click_link(arg1)
end

When(/^I press "(.*?)"$/) do |arg1|
  click_button(arg1)
end

Then(/^I should see "(.*?)"$/) do |arg1|
  	expect(page).to have_content (arg1)
end

Given(/^I am on "(.*?)"$/) do |arg1|
  	visit(arg1)
end

When(/^I fill in "(.*?)" with "(.*?)"$/) do |arg1, arg2|
  	fill_in(arg1, :with => arg2)
end

When(/^I do not fill in "(.*?)"$/) do |arg1|
  	fill_in(arg1, :with => "")
end