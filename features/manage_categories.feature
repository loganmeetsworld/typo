Feature: Manage Categories
  As a blog administrator
  In order to organize my thoughts
  I want to be able to add and edit categories

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Categories List
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
    When I press "Edit"
    And I fill in "category_anem" with "Lorem Ipsum"
