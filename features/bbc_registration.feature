Feature: BBC Registration

  Scenario: Inputting incorrect username credentials shows an error
    Given I try to register with an invalid password
    When I submit my details
    Then I receive an error for not having the correct password

  Scenario: User trying to register when under age
    Given I access the bbc registration page
    When I click on the under 13 button
    Then I am redirected to the corresponding page

  Scenario: User trying to register when over age
    Given I try to register as a 150 year old
    When I click the continue button
    Then an error message appears

  Scenario: User trying to register with an invalid postcode
    Given I try to register with the wrong postcode
    Then I receive an error for not having the correct postcode

  Scenario: User trying to register with an invalid email format
    Given I try to register with the wrong email format
    Then I receive an error for not having the correct email format
