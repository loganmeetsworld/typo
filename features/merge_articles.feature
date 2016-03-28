Feature: Manage Categories
  As a blog administrator
  In order to condense similar articles
  I want to be able to merge articles

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Creating a new article
    Given I am on the new article page
    And I fill in "article_title" with "Hello, World"
    And I fill in "article__body_and_extended_editor" with "Lorem Ipsum"
    And I fill in "merge_with" with "1"
    And I press "Merge"
    Then I should be on the new article page
