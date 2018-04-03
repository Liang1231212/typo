Feature: Create Categories
  As a blog administrator
  In order to allow users to read similar articles more easily 
  I want to be able to add categories

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Successfully create categories
    Given I am on the new categories page
    When I fill in "category_name" with "Category A"
    And I fill in "category_keywords" with "Keyword ABC"
    And I fill in "category_permalink" with "no permalink"
    And I fill in "category_description" with "no description"

    And I press "Save"
    Then I should see "Category A"
    Then I should see "Keyword ABC"
    Then I should see "no permalink"
    Then I should see "no description"

