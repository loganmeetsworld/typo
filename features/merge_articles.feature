Feature: Merge Articles
  As a blog administrator
  In order to condense similar articles
  I want to be able to merge articles

  Background:
    Given the blog is set up
    And an article named "Hello, World" with 2 comments
    And an article named "Goodbye, World" with 1 comment

  Scenario: Admin user can merge articles
    Given I am logged into the admin panel
    And I click "All Articles"
    And I click "Hello, World"
    And I fill in "merge" with "2"
    And I press "Merge"
    Then I should be on the content admin page
    When I go to home
    And I click on "All Articles"
    Then I should see one article
    And I should see "Hello, World"
    And I should not see "Goodbye, World"
    And the article should have 3 comments

  Scenario: Non-admin users cannot merge articles
    Given I am logged in as a non-admin
    And I follow "All Articles"
    And I follow "Hello, World"
    Then I should not see "Merge Articles"