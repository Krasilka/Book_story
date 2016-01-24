Feature: Registration of new users

#  Being not a user yet I am able to create an account on this website

  Scenario: Successful registration of new user
    Given I am on Books webstore main page
    When I register new user
    Then I should see successful registration message
