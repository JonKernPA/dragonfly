# Simple Prototype using Dragonfly with MongoMapper

*NOTE:* This is not meant for production, I was just exploring some gems to see if I wanted
to use them in a production app.

Major kudos to Mark Evans et al...

I wanted to test out the following in a simple app

* [Dragonfly](http://github.com/markevans/dragonfly) gem.
* with [Dragonfly::MongoDataStore](https://github.com/markevans/dragonfly-mongo_data_store) gem.
* And a file uploader gem: [jquery-fileupload-rails](https://github.com/tors/jquery-fileupload-rails)

This application was generated with the [rails_apps_composer](https://github.com/RailsApps/rails_apps_composer) gem
provided by the [RailsApps Project](http://railsapps.github.io/).

## How To Run

- Start mongo
- `rails server`
- visit home page `http://localhost:3000/`

You should see some buttons for uploading...

You can also drag-and-drop files to the page.

## Ruby on Rails

This application requires:

-   Ruby
-   Rails

Learn more about [Installing Rails](http://railsapps.github.io/installing-rails.html).

## Database

This application uses MongoDB with the MongoMapper ORM.

