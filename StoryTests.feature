Feature: Create Account
A non-member user can create an account following the following conditions:
* username must not be already in use
* email must not be already in use
* password must be at least 8 characters long, contains only alphanumericals
If any of the above conditions are not met, a corresponding error message will be displayed

  Scenario: User creates account with correct information.
  The account should be successfully created and the user should be logged into the new account
  
    Given user is a non-member
     When user enters an unique username
      And user enters an unique email
      And user enters a password that is at least 8 characters long, contains only alphanumericals
     Then an account is successfully crated for the user
  
  Scenario: User fails to create account due to an existing username
  The user should get the error message "username taken, please choose another one"
    Given user is a non-member 
     When user enters an username that is already in use
     Then error message is displayed 
  
  Scenario: User fails to create account due to an existing email
  The user should get the error message "email is already in use"
    Given user is a non-member
     When user enters an email that is already in use
     Then error message is displayed 
  
  Scenario: User fails to create account due to password that does not meet the requirements
  The user should get the error message "password must be at least 8 characters long, contains only alphanumericals"
    Given user is a non-member
     When user enters a password that does not meet requirement
     Then error message is displayed 
      And user is
  
  
