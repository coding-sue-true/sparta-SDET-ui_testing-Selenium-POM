# sparta-SDET-ui_testing-Selenium-POM

## Main
After practising Unit Testing with the [FizzBuzz challenge](https://github.com/coding-sue-true/sparta-SDET-unit_testing-fizzbuzz), and Integration Testing by [testing](https://github.com/coding-sue-true/sparta-SDET-integration_testing-SOM) data from an API, we started practising User Acceptance Testing.
This implied testing the different steps of signing up into a real website, more specifically into [TOOls QA](http://demoqa.com/registration/).

For this exercise we used Ruby language and Selenium.

Selenium is a software testing framework the allows you to write your tests and while the script is being executed on your console, you can see a specific browser previously set up (:chrome, :firefox, :safari, etc.) with the tests being run using the data that was given on your code.

Selenium can be used by typing the following on your console:
```
gem install selenium-webdriver
```


### What is Acceptance Testing?
After going through all the process of the V-Model, unit testing, integration testing, system testing we've come to acceptance testing. In this phase, testing is performed against the user requirements, checking if it meets the acceptance criteria.

According with ISTQB Glossary, Acceptance Testing is:

> Formal testing with respect to user needs, requirements, and business processes conducted to determine whether or not a system satisfies the acceptance criteria and to enable the user, customers or other authorised entity to determine whether or not to accept the system.
>http://glossary.istqb.org/search/acceptance%20testing

### What is POM, Page Object Model?
Instead getting data from an API and then test it, with Page Object Model, we have different fields on a website that can be tested, and we use those fields _:id, :class,_ or _:name_ to access them and insert data in order to validate that field.

Let's see bellow the example used and tested in this repository

![Tools QA](/images/toolsqa.png)

I'm using google dev tools to inspect the different elements of the page.
In this case, "First name" field has an id of _name 3 firstname_, and this is what we'll use in our code to insert data and test that field.


## How To Test
- Git clone this repository
- On your console move into the folder where this repository is cloned.
- Run bundle to make sure you have all the required gems installed. You need to have the following gems:
  - RSpec gem
  - Selenium WebDriver gem

```
bundle
```
If you don't have one or more, on your console, run the following, and **run bundle again**:
```
gem install rspec
gem install selenium-webdriver
bundle
```
- Run 'rspec' to run the code
```
  rspec
```
- Something like the following should be displayed in your console:

![Test](/images/test.png)


## Documentation
- http://istqbexamcertification.com/
- https://github.com/rspec/rspec
- https://rubygems.org
- https://www.ruby-lang.org/en/documentation/
- http://www.seleniumhq.org/
- http://www.rubydoc.info/gems/selenium-webdriver/3.8.0
- https://github.com/SeleniumHQ/selenium/wiki/Ruby-Bindings
