Feature: View Employee List

  As an admin
  So that I can keep track of all employees logged activities for this month
  I want to see a display of all employees and the number of days they have logged activities for this month

Background:
  Given the following admins exist:
  | email                       | password              | password_confirmation | password_changed |
  | 169.healthyeff@gmail.com    | ?Northsidepotato169   | ?Northsidepotato169   | true             |
  And the following users exist:
  | email                      | password        | password_confirmation | password_changed |
  | healthypotato@gmail.com    | ?Hotpotato169   | ?Hotpotato169         | true             |
  And the current rate is 10

Scenario: Privileged access
  Given I am logged in as a non-admin
  Then I should not see the "Admin" link
  And I should not see the "Pending" link
  When I visit the admin list page
  Then I should be on the home page
  And I should see that I cannot access this page

Scenario: Admin list view - no records
  Given I am logged in as an admin
  When I follow "Admin"
  And I navigate to the next month
  Then I should see "No records"

@timecop
Scenario: Admin list view - records
  Given the date is 04-15-2015
  And Nick Herson has logged 3 activities
  And I am logged in as an admin
  When I follow "Admin"
  Then I should see a table of employee names
  And I should see "First Name"
  And I should see "Nick"
  And I should see "Last Name"
  And I should see "Herson"
  And I should see "Days of Healthy Activity"
  And I should see "3"
  And I should see "Pending"

@timecop
Scenario: Admin list view - sorting
  Given the date is 04-15-2015
  And John Doe has logged 2 activities
  And Armando Fox has logged 3 activities
  And I am logged in as an admin

  When I visit the admin list view
  And I follow "First Name"
  Then "Armando" should appear before "John"

  When I follow "Last Name"
  Then "Doe" should appear before "Fox"

  When I follow "Days of Healthy Activity"
  Then "Armando" should appear before "John"

@timecop
Scenario: Admin list view - viewing and sorting previous months
  Given I travel to 04-20-2015
  And Armando Fox has logged 3 activities
  And John Doe has logged 2 activities
  And the date is 05-01-2015
  And I am logged in as an admin

  When I visit the admin list view
  Then I should see "May 2015"
  And I navigate to the previous month
  Then I should see "April 2015"

  When I follow "First Name"
  Then I should see "April 2015"
  And "Armando" should appear before "John"

  When I follow "Last Name"
  Then I should see "April 2015"
  And "Doe" should appear before "Fox"
