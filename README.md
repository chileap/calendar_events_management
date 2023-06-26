# Calendar Event Manager
This is a simple calendar event manager built with Ruby on Rails. It allows users to create, edit, and delete events. It also allows users to view events in a calendar view.
This application uses Hotwire/Stimulus for the front-end and PostgreSQL for the database.
We setup UUIDs for the database to avoid exposing the primary key IDs to the user.

## Requirements and Dependencies
- Ruby 3.1.0
- Rails 7.0.5
- Hotwire/Stimulus
- Tailwind CSS
- PostgreSQL
- RSpec
- FullCalendar
- Devise

## Installation
- Clone the repository
- Run `bundle install`
- Run `rails db:create`
- Run `rails db:migrate`
- Run `./bin/dev` # This will start the server and webpack-dev-server
- Open `localhost:3000` in your browser

## Testing
- Run `rspec`
