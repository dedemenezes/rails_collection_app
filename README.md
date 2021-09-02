# Collection App
Hosted on Heroku: [Collection Builder](http://collection-builders.herokuapp.com)

## Online Testing
App hosted on Heroku already has two users:

Admin user:
```ruby
{ username: 'admin', password: 123456 }
```

Basic user:
```ruby
{ username: 'basic', password: 123456 }
```

## Local Testing

Necessary to have bundler installed

Clone this repo
```bash
git clone git@github.com:dedemenezes/rails_collection_app.git
```

Inside the repo folder run:

```bash
bundle install
```

Prepare the db

```bash
rails db:setup
```

Run locally

```bash
rails server
```

## Basic template

As a proud Le Wagon student I started from the minimal template created at the bootcamp.

"Rails app generated with [lewagon/rails-templates](https://github.com/lewagon/rails-templates), created by the [Le Wagon coding bootcamp](https://www.lewagon.com) team."
