Feature: Manage Categories
  As a blog administrator
  In order to organize my thoughts
  I want to be able to add and edit categories

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Adding a category
    Given I have categories titled Food, Cars
    When I go to the list of categories
    Then I should see "Food"
    And I should see "Cars"
    When I fill in "category_name" with "Foobar"
    And I press "Save"
    Then I should be on the list of categories
    Then I should see "Food"
    And I should see "Cars"
    And I should see "Foobar"

  Scenario: Editing a Category
    Given I am on the edit category page
    And I fill in "category_name" with "Lorem Ipsum"
    When I fill in "category_name" with "Different Thing"
    And I press "Save"
    Then I should be on the list of categories
    Then I should see "Different Thing"
    And I should not see "General"
    When I follow "Cancel"
    Then I should be on the list of categories
    And the "category_name" field should be empty