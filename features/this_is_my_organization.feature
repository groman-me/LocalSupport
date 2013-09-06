Feature: This is my organization
  As a user
  So that I could be set as an admin of our organization
  I want to be able to request for the privilege through our organization page

  Background:
    Given the following users are registered:
    | email              | password       | admin | organization    | confirmed_at        |
    | nonadmin@myorg.com | mypassword1234 | false | My Organization | 2008-01-01 00:00:00 |

    And the following organizations exist:
    | name            | address        |
    | My Organization | 83 pinner road |

  Scenario: User is not signed in and clicks on the "This is my organization" link
    Given I am not signed in as any user
    When I am on the charity page for "My Organization"
    And I follow "This is my organization"
    Then I should be on the sign in page
    
  Scenario: I request to be admin of my organization
    Given I am signed in as a non-admin
    When I am on the charity page for "My Organization"
    Then I should see "This is my organization"
    
