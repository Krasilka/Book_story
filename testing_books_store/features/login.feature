Feature: Login feature

  As a user I want to login to webstore

  Scenario: Successful login with valid existing user
    Given I am on Books webstore main page
    When I login as valid existing user
    Then I should see successful login message

