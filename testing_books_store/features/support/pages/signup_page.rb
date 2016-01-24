class SignupPage
  include PageObject

NEW_USER_DATA = {  last_name: "test",
                   password: "Qwerty1"}

  text_field(:first_name, :id => 'user_first_name')
  text_field(:last_name, :id => 'user_last_name')
  text_field(:account_email, :id => 'account_email')
  text_field(:account_password, :id => 'account_password')
  text_field(:confirm_password, :id => 'account_password_confirmation')
  button(:confirm_signup, :value => 'Sign up')

  def signup_with
    self.first_name = "test_"+DateTime.now.strftime("%Y_%m_%d_%H_%M")
    self.last_name = NEW_USER_DATA[:last_name]
    self.account_email = "test_"+DateTime.now.strftime("%Y_%m_%d_%H_%M")+"@mailinator.com"
    self.account_password = NEW_USER_DATA[:password]
    self.confirm_password = NEW_USER_DATA[:password]
    confirm_signup
  end

end
