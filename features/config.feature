Feature: Product Customization and Cart Management
As a client of the EBAC Shop 
I want to customize my product according to my size and preferences
And choose the quantity
To then add to the cart

Scenario: Mandatory selections for color, size, and quantity:
Given that I access the product customization page
When I try to proceed without selecting color, size and quantity
Then the system should display an error message indicating that color, size, and quantity are required

Scenario: Limit of 10 products per sale
Given I have added 10 products to the cart
When I try to add one more product to the cart
Then I should see an error message indicating that the maximum limit of 10 products per sale has been reached

Scenario: Clearing selections resets to the original state
Given I have selected color, size, and quantity for a product
When I click on the "Clear" button
Then the product selection should reset to its original state (default color, size, and quantity)