class LoginPage
  include PageObject

  VALID_USER = {:user_email => "web_test@mailinator.com",
                :user_password => "qwerty1"}

  text_field(:username, :id => 'user_name')
  text_field(:password, :id => 'password')
  button(:login, :value => 'Login')

  def login_with
    self.username = VALID_USER[:user_email]
    self.password = VALID_USER[:user_password]
    login
  end

end
