Feature: Enter workouts for multiple days

  As an employee
  So that I can get credit for days I was away
  I want to be able to enter past workouts

Background:
  Given the following users exist:
  | email                       | password              | password_confirmation |    
  | 169.healthyeff@gmail.com    | northsidepotato       | northsidepotato       |
  Given I am logged in
  And I am on the multiple day input page

@javascript
Scenario: Adding multiple exercises for multiple days
  And I fill in day and activity with:3/10/2015,Swimming 100,Running 30|3/07/2015,Rawring 30,Laughing 50
  And I fill in reason with: "On Vacation"
  And I write the captcha text in the textbox
  And I press “Submit”
  Then I should be on my profile page
  And I should see "Swimming for 100 minutes has been recorded for 3/10/2015"
  And I should see "Running for 30 minutes has been recorded for 3/10/2015"
  And I should see "Rawring for 30 minutes has been recorded for 3/07/2015"
  And I should see "Laughing for 50 minutes has been recorded for 3/07/2015"

@javascript
Scenario: Adding multiple exercises for multiple days with blank fields
  And I fill in day and activity with:3/10/2015,Swimming 100,Running 30|3/07/2015,Rawring 30,Laughing 50
  And I write the captcha text in the textbox
  And I press “Submit”
  Then I should be on the multiple day input page
  And I should see "Reason can't be blank"


@javascript
Scenario: Submit blank form
  And I write the captcha text in the textbox
  And I press “Submit”
  Then I should be on the multiple day input page
  And I should see "Fields are empty"


@javascript
Scenario: Submit blank form with only date filled in
  And I click Add Day
  And I fill out date
  And I write the captcha text in the textbox
  And I press “Submit”
  Then I should be on the multiple day input page
  And I should see "Fields are empty"


