# Fancy Beast

![Alt text](./app/assets/images/fancy-beast.png?raw=true "Fancy Beast")

## Overview

[Fancy Beast](http://fancybeast.herokuapp.com/) was created as part of the curriculum at the  [Turing School of Software & Design](http://turing.io) to complete the [Little Shop of Orders](https://github.com/turingschool/curriculum/blob/master/source/projects/little_shop.markdown) project.

Fancy Beast is a faux e-commerce platform for users to order exotic pets online.  It was built using Ruby on Rails 4.2.6.

#### Learning Goals

* Use TDD to drive all layers of Rails development including unit and integration tests
* Design a system of models which use one-to-one, one-to-many, and many-to-many relationships
* Practice mixing HTML, CSS, and templates to create an inviting and usable User Interface
* Differentiate responsibilities between components of the Rails stack
* Build a logical user-flow that moves across multiple controllers and models
* Practice an agile workflow and improve communication skills working within a team


### Live Version

You can find a live version of this application on Heroku at: http://fancybeast.herokuapp.com/

### Setup

To set up a local copy of this project, perform the following:

  1. Clone the repository: `git clone https://github.com/matthewrpacker/exotic_pet_shop`
  2. `cd` into the project's directory
  3. Run `bundle install`
  4. Run `rake db:{create,migrate,seed}` to set up the postgres database and seed it with animals and users.
    - The seed includes the setup for an admin. To login as an admin, use these credentials - email: admin, password: admin - or change these credentials in your seed file.
  5. Run the application in the dev environment by running `rails s`
  6. Visit `http://localhost:3000/`

### Features

#### Exotic Animals

Our site features a variety of exotic animals.  A user has the ability to [browse all animals](http://fancybeast.herokuapp.com/animals) in a sprawling layout inspired by Pinterest, or [browse animals by category](http://fancybeast.herokuapp.com/categories).  

#### Authentication and Mailers

When a new user is interested in joining our website, they can [create a new account](http://fancybeast.herokuapp.com/users/new). Once that user has signed up for Fancy Beast, our application utilizes mailers to send them a welcome email. A user that has created an account can then [login](http://fancybeast.herokuapp.com/login).  

#### Authorization

If a user is logged with an admin account, they have the ability to create new animals, edit existing animals, and edit their account information.  A regular user does not access to these features.

#### Cart Functionality

A user can add animals that are not [extinct](http://fancybeast.herokuapp.com/animals/44) to their [cart](http://fancybeast.herokuapp.com/cart).  In order to checkout, that user must be logged in.  After a user has placed an order, they can then visit their [order history](http://fancybeast.herokuapp.com/orders) (only visible while logged in).


#### Bonus Features

Our application includes a [ bonus easter-egg page](http://fancybeast.herokuapp.com/secret) that randomly generates gifs of animals.  In order to create this functionality, we consumed the [Giphy API](https://github.com/Giphy/GiphyAPI).

### Design

We used [Bootstrap](http://getbootstrap.com/) to style our website.


### Test Suite

The test suite tests the application on multiple levels. To run all of the tests, run `rspec` from the terminal in the main directory of the project. The feature tests (integration tests) rely mainly on the [capybara gem](https://github.com/jnicklas/capybara) for navigating the various application views.

The project also utilizes the [simplecov gem](https://github.com/colszowka/simplecov) for quick statistics on code coverage.

### Dependencies

This application depends on many ruby gems, all of which are found in the `Gemfile` and can be installed by running `bundle install` from the terminal in the main directory of the project.

Built with Rails 4.2.6 and Ruby 2.3.0.

### Collaborators

[David Tinianow](https://github.com/dtinianow), [Lin McCartney](https://github.com/lcmccartney), [Matthew Packer](https://github.com/matthewrpacker)
