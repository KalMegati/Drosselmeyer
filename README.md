# Welcome to The Usual Spot

Drosselmeyer is an application for collaborative world-building and networking all collaborators by the projects they engage with. Writers can create large storyscapes called Settings, which they or other Writers can fill with story elements like Factions and Characters and detail the ways they interact with each other.

## Installation and Setup

1) Clone the repo:

`git clone git@github.com:KalMegati/Drosselmeyer.git`

2) Enter the app directory:

`cd Drosselmeyer`

3) Install the bundle to ensure your system has all the necessary extensions:

`bundle install`

### Seeding (Optional)

If you would like some starter elements to see how the site displays, enter the command:

`rake db:seed`

This will provide you with content for testing.

## Execution

In the terminal, enter the command:

`rails s`

You will recive an output which includes:

`Listening on #<address>#`

Open an internet browser and go to:

`http://localhost:3000/`

*Make sure to specify `http` and not `https`.*

## Usage

Without logging in to the site, you can view current Writers, Settings, Factions, and Characters, but you will not be able to make any edits. The different types of creations are navigated via hyperlinks, and you can use the page header at any point to return to the Home directory.

Once logged in as a Writer, you will be able to create and edit your own elements. You will also be able to create Factions and Characters within any Setting, even those made by other Writers, as well as assign your Characters to Factions made by other Writers.

On the main page for a Setting, only elements with a story that is longer than 250 characters will appear. Clicking on the Faction or Character hyperlinks within a Setting will display a full list of all elements regardless of story content.

If you used the Seed and would like to access any of the provided Writers or their creations, their Passwords are the same as their Handles.

To remove all work from the database, in the terminal enter the command:

`rake db:migrate VERSION=0`

Then enter the command:

`rake db:migrate`

This will ready the database for usage again.

You can also reset and reseed the database with the single command:

`rails db:reset`

### Github Login Unoperational

Github Login functionality will require an authentication key and secret from Github. Details on installing this function locally are pending.

It is currently possible to change the profile information associated with a Github-accessed account. The icon can be changed without damaging function. Changing the handle will make it impossible to log into the account again.

## Video Tutorial

https://drive.google.com/file/d/1yoDgp3ejRKoB6p8eIALAJOg4yJy6DO8a/view?usp=sharing

## Pending Updates

1) Styling
2) Allow Writers to selectively authorize others to contribute to their Settings

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/KalMegati/Drosselmeyer. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Drosselmeyer project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/KalMegati/Drosselmeyer/blob/master/CODE_OF_CONDUCT.md).

### README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
