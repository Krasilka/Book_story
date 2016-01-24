
When /^I register new user$/ do
  on(HomePage).signup_page
  on(SignupPage).signup_with
end

Then /^I should see successful registration message$/ do
  fail unless @browser.p(:id => 'flash_success', :text => "Signed up successfully.").exists?
end
