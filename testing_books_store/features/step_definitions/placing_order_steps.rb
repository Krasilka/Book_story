
When /^I add (\d+) items to the cart$/ do |number|
  on(HomePage).add_to_cart_items(number)
end

Then /^I see (\d+) items in my cart$/ do |number|
  on(HomePage).cart
  on(ShoppingCartPage).products_in_cart(number)
end

And /^I proceed to checkout$/ do
  on(ShoppingCartPage).proceed_to_checkout
end

Then /^I should see order successfully placed message$/ do
  fail unless @browser.p(:id => 'flash_success', :text => "Thank you. We have received your order and will begin processing it as soon as possible.").exists?
end



