Feature: Starting the game
	In order to play battleships
	As a nostalgic player
	I want to start a new game

	Scenario: Landing page
	Given I am on the homepage
	When I follow "New Game"
	Then I should see "What's your name?"

	Scenario: Registering
	Given I am on "/start"
	When I fill in "Name" with "Catharina"
	And I press "Submit"
	Then I should see "Guten Tag, Catharina"

	Scenario: Entering no name
	Given I am on "/start"
	When I do not fill in "Name"
	And I press "Submit"
	Then I should see "Please enter your name"