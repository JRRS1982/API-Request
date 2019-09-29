# API-Request

This is the project file for a tech test that i was given by MVF, a digital marketing company that uses data to generate customer leads. A copy of the instructions can be found [here](Instructions.pdf).

## Description

The client wants to make a request to Github's API, with a specified users username, GET that users (public) data and interpret the available information to predict what the users favorite coding language is. The product can be a web or command line application in any language.

### [User Stories](#user_story) | [Tech](#tech) | [Reflection](#reflection) | [Contact](#contact)

#### Problem: Input / Outputs

Inputs: As it is a quicker route to MVP I have decided to make this a simple command line application, so it will take a string from the user (a users GitHub profile name) on the command line. We expect Github's API to be queried and return a JSON file which we will then need to process.

Outputs: Being a command line application it will print a string /statement to the terminal with a prediction of the users favorite language. The prediction will probably be attained by calculating the most commonly used language across the users public portfolios.

### <a name="user_story">User Stories</a>

Simple macro level user story
>As a developer with friends, I want to predict what my friends favorite coding language is by sending a query to Github, so that I can buy my friend a relevant coding present.

#### Acceptance Criteria

Please find Acceptance Criteria [here](acceptance_criteria.md).

### <a name="Tech">Tech Stack</a>

* Ruby version 2.5.0
* RSpec - for testing
* Simplecov - for test coverage
* Rubocop version 0.65.0 - for style linting
* Webmock gem - mocking requests
* Rest-client gem - making http requests
* Json gem - so we can parse the JSON file from the API
* Pry gem - debugging helper

#### API's Used

Documentation for the Github API which we interacted with can be found [here](https://developer.github.com/v3/)

Of note is that the API limits requests to 30 searches a minute. So if I have lots of requests though tests, getting data from the API I may block my connection.

### <a name="installation">Installation: how it works</a>

Clone the repository to your local machine.
```
$ git clone git@github.com:JRRS1982/API-Request.git
```
Install the gems from the gemfile
```
$ bundle install
```
Name and create your instance
```
$ favourite = Favourite.new
```
Request data 
```
$ favourite.request('JRRS1982')
```
Print the results
```
$ favourite.print_out('language')
```

Subsequent requests / printing will overwrite locally stored variables.

To prevent unnecessary requests to the Github API, I have used json files to stub the tests. A real repo can be used in production.

### <a name="screenshots">Screenshots / UML / Notes / Diagrams</a>

I have drawn some notes on paper to plan classes, but there may not be many classes at first thought, should there be any images / notes, please find them in the images folder of the project. 

### <a name="reflection">Reflection and further development</a>

I managed to complete the task fairly comfortably, but there is still further refactoring that can be completed.

### Credits / team members

This is a solo tech test exercise, any and all feedback on my code or back to me in person is greatly appreciated.
