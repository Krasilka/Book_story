
And /^I login as valid existing user$/ do
  on(HomePage).login_page
  on(LoginPage).login_with
end

Then /^I should see successful login message$/ do
  fail unless @browser.p(:id => 'flash_success').exists?
end
