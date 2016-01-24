Feature: Placing orders

  As a user I want to be able to place an order

  Scenario: Placing an order with 2 books
    Given I am on Books webstore main page
    And I login as valid existing user
    When I add 2 items to the cart
    Then I see 2 items in my cart
    When I proceed to checkout
    Then I should see order successfully placed message





