Feature: Merge Articles
  As a blog administrator
  In order to condense similar articles
  I want to be able to merge articles

  Background:
    Given the blog is set up

    Given the following articles exist:
    | title          | body   | user_id | published |
    | Hello, World   | hiiiii | 1       | true      |
    | Goodbye, World | biiiii | 2       | true      |

    Given the following comments exist: 
    | author | body          | article_id |
    | Logan  | Hi            | 3          |
    | Audrey | Whatup        | 3          |
    | Jennie | No problem    | 4          |
    | Becca  | Great content | 4          |

  Scenario: When articles get merged, they contain the merged information, same title, and same author
    And I am logged into the admin panel
    And I click "All Articles"
    And I click "Goodbye, World"
    And I fill in "merge_with" with "3"
    And I press "Merge"
    Then I should see "was successful"
    And I should not see "Goodbye, World"
    When I follow "Hello, World"
    Then I should see "hiiiii"
    And I should see "biiiii"
    When I follow "Comments"
    Then I should see "Hi"
    And I should see "Whatup"
    And I should see "No problem"
    And I should see "Great content"