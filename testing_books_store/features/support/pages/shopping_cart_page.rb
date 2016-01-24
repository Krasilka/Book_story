class ShoppingCartPage
  include PageObject

  CHECKOUT_DATA = {payment_method: "phone me",
                   delivery_option: "pickup ($0.00)",
                   account_phone: "+435279354"}

  select_list(:delivery, :name => 'region')
  text_field(:phone_number, :id => 'account_phone')
  link(:checkout, :text => 'Checkout')

  def set_payment_method=(payment_method)
    @browser.radio(:id => 'po_option_phone me', :value => payment_method).set
  end

  def products_in_cart(number)
    @browser.tbody(:id => 'cart_items').rows.length.should == number.to_i
  end

  def proceed_to_checkout
      self.delivery = CHECKOUT_DATA[:delivery_option]
      self.set_payment_method = CHECKOUT_DATA[:payment_method]
      checkout
      self.phone_number = CHECKOUT_DATA[:account_phone]
      checkout
    end

end
