Feature: DemoBlaze Site Order Testing
        As a user I should able to perform a transaction on Demoblaze Site
 
 Scenario: I login with valid credential
 		Given I navigate to "https://www.demoblaze.com/index.html"
 				When I navigate through Product categories
        And I navigate to Laptop
        And I select "Sony vaio i5" and add to cart
        Then I accept pop-up confirmation
        When I go back and select Laptop
        And I select "Dell i7 8gb" and add to cart
        Then I accept pop-up confirmation
        When I navigate to Cart
        And I delete "Dell i7 8gb" from Cart
        And I click on Place Order
        And I fill in all web form fields
        And I click on Purchase
        And I Capture and log purchase Id and Amount
        Then I Assert purchase amount equals expected
        And I click OK
 
 Scenario: Close browser
 		Then I close browser 