Feature: using jquery for selenium actions and tests
  In order to gain time writing selenium tests
  I should be able to write some of them using jquery matchers

  Scenario: Matching an element that appears only once
    When matching a single element
    
    Then it matches
    
  Scenario: Trying to match an element that is not on the page
    When matching a non-existing element
    
    Then it shows the error "no elements found."
    
  Scenario: Trying to get an element that appears twice on the page
    When matching an element that appears twice on the page
    
    Then it shows the error "too many elements found."
  
  Scenario: Getting information about a visible element
    When testing the (in)visibility of an object
    
    Then it returns correct information

  Scenario: Waiting for text to appear
    When waiting for a text phrase
    
    Then the text is on the page
    
  Scenario: Waiting for an element to appear
    When waiting for an element to appear
    
    Then the element is on the page
  
  Scenario: Waiting for an element to disappear
    When waiting for an element to disappear
    
    Then the element is not on the page
  
  Scenario: Waiting for an element to turn visible
    When waiting for an element to turn visible
    
    Then the element is visible
  
  Scenario: Waiting for an element to turn hidden
    When waiting for an element to turn hidden
  
    Then the element is hidden
    
  Scenario: Using jquery methods upon an element
    When calling html of an element
    
    Then it returns all html of that element
    
  Scenario: Using jquery methods with parameters upon an element
    When calling find with another element of an element
    
    Then it returns the element
  