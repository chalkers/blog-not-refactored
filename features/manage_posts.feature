Feature: Manage posts
  In order to write a blog
  As an author
  I want to manage blog posts
  
  Scenario: Create a new post
    Given I am on the new post page
    When I fill in "Title" with "title 1"
    And I fill in "Body" with "body 1"
    And I press "Create"
    Then I should see "title 1"
    And I should see "body 1"


  Scenario: Delete post
    Given I have the following post records
      | title   | body   |
      | title 1 | body 1 |
      | title 2 | body 2 |
      | title 3 | body 3 |
      | title 4 | body 4 |

    When I go to post list page 
	And I delete the 3rd post
    Then I should see the following posts:
      | title   | body   |
      | title 1 | body 1 |
      | title 2 | body 2 |
      | title 4 | body 4 |

    Scenario: List Blog Articles 
		Given I have the following post records
	 	| title |
		| Ruby  |
	 	| Rails |
	 	| BDD   |
		When I go to post list page
		Then I should see "Ruby"
		And I should see "Rails"
		And I should see "BDD"
	
	Scenario: Edit a new post
		Given I have the following post records
	 		| title | body	|
			| Ruby  | Ruby body|
		When I go to post list page
		And I follow "Edit Post"
		And I fill in "Title" with "title 1"
		And I fill in "Body" with "body 1"
		And I press "Update"
		Then I should see "title 1"
		And I should see "body 1"
		And I should not see "Ruby"
		And I should not see "Ruby body"