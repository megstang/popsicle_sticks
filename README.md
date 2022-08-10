# Popsicle Sticks

Popsicle Sticks is a web application that allows users to either randomly or methodically select students to call on during a live class. Users of the application are able to add students to their current module, and click a button to randomly select a student to call on. If for any reason, we want to limit a students chances of being called on, that frequency can be updated in the student edit page. The application keeps track of how many times each student was called on during the inning, although the call count can be reset at any time via the interface. On the landing page, users are also able to promote all students. This functionality should be used at the end of the inning when students move from Mod 1 to Mod 2, Mod 2 to Mod 3, and so on. 


## Setup

### Prerequisites

The rest of the setup assumes you have the following installed in your local environment.

* Ruby 3.1.1 We recommend [RBenv](https://github.com/rbenv/rbenv) for managing your Ruby version.
* Rails 7.0
* Postgresql
* Bundler 2.3.7



Other versions may work. If you wish to test other versions you will have to modify the `Gemfile`, remove `Gemfile.lock` and run `bundle install`.


To set up locally, clone this repo and run the following commands.

```
bundle install
rails db:create
rails db:migrate
rails db:seed
```

This app is still in development and can be viewed on `http://localhost:3000/` after running your server using the `rails s` command.
