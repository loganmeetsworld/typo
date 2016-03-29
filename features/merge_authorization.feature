Feature: Merge Articles
  As a blog administrator
  In order to condense similar articles
  I want to be able to merge articles

  Background:
    Given the blog is set up

    Given the following articles exist:
    | title    | user_id | published |
    | Article1 | 1       | true      |
    | Article2 | 1       | true      |

  Scenario: Admin user can merge articles
    Given I am logged into the admin panel
    Then I should be on the admin page
    And I click "All Articles"
    And I click "Article1"
    Then I should see "Merge Articles"

  Scenario: Non-admin users cannot merge articles
    Given I am not logged into the admin panel
    And I follow "All Articles"
    And I follow "Article1"
    Then I should not see "Merge Articles"