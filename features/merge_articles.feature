Feature: Merge Articles
  As a blog administrator
  In order to group articles with same topic, I want to have a form on the article’s edit page that allows me to enter in the ID of another article to merge the current article with
  Background:
    Given the blog is set up
    And I am logged into the admin panel
    Given the following articles exist:
    | title        | body       | author  | id |
    | test128      | hahaha     | benz    | 1  |
    | test128      | bababa     | sun     | 2  |
  
  Scenario: merge contains body of both articles
    When I go to all articles page
    And I follow_special test128 
    Then fill ID with 2 
    Then press submit 
    Then check result
  Scenario: merge contains one author
  Scenario: merge contains all comments
  Scenario: merge contains title of either one of the articles
    When I fill in "article_title" with "Foobar"
    And I fill in "article__body_and_extended_editor" with "Lorem Ipsum"
    And I press "Publish"
    Then I should be on the admin content page
    When I go to the home page
    Then I should see "Foobar"
    When I follow "Foobar"
    Then I should see "Lorem Ipsum"