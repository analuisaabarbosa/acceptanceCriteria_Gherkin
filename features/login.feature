Feature: Login Screen
As a client of the EBAC Shop 
I want to log in to the platform 
To view my orders 

Background: 
Given that I acess the login page of the Ebac Shop

Scenario Outline: Log in with sucess
When I enter the <user>
And the <password>
Then the page must be redirected to the checkout page

Examples:
|       user        | password | 
| ana@ebac.com.br   | pas@123  | 
| joao@silva.com.br | joa@456  |
| maria@shop.com.br | mari@!   | 

Scenario: User does not exist 
When I enter the user "luisa@ebac.com.br" 
And the password "xxx@123"
Then it should display a alert message: "Usuário ou senha inválidos" 

Scenario Outline: User with an invalid password
When I enter the user "joao@silva.com.br"
And the password "mari@!"
Then it should display a alert message: "Usuário ou senha inválidos" 