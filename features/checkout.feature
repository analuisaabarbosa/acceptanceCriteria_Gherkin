Feature: Checkout Screen
As a client of EBAC-SHOP
I want to complete my registration 
To finalize my order

Background:
Given I am on the user registration page

Scenario: All mandatory fields must be completed
When I fill out the form with all mandatory data
And I submit the registration form
Then the registration should be successful

Scenario: Email field must be validated for correct format
When I enter an invalid email format in the email field
And I submit the registration form
Then the system should display an error message indicating that the email format is invalid

Scenario: Alert message for empty mandatory fields
When I leave mandatory fields empty
And I attempt to submit the registration form
Then the system should display an alert message indicating that all required fields must be filled
