Feature: Manage Categories
  As a blog administrator
  In order to condense similar articles
  I want to be able to merge articles

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Creating a new article
    Given I am on the new article page
    When I fill in "article_title" with "Hello"
    And I fill in "article__body_and_extended_editor" with "Lorem Ipsum"
    And I press "Publish"
    Then I should be on the admin content page
    When I go to the home page
    Then I should see "Hello World!"
    And I should see "Lorem Ipsum"
    And I should see "Welcome to Typo. This is your first article. Edit or delete it, then start blogging!"
    When I go to the new article page
    And I fill in "merge_with" with "1"
    And I press "Merge"
    Then I should be on the new article page