class HomePage
  include PageObject

  page_url "http://retail.circlesoft.net/"

  link(:signup_page, :text => 'Sign up')
  link(:login_page, :text => 'Login')
  link(:cart, :title => 'go to Cart')
  link(:add_to_cart, :text => 'Add to Cart')

  def add_to_cart_items(number)
    (number).to_i.times do
      add_to_cart
    end
  end

end