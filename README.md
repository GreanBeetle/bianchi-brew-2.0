# **BIANCHI's BREWS**

## April 20, 2018

####  by John Rykken

#### Bianchi's Brews is a code school project and simple web application. It utilizes CRUD functionality, Rails, and a pSQL database. The core functionality allows users to create, read, update, and delete a list of beers from around the world (here, thanks to the Faker Gem, the world is the Galactic Empire). In demonstration of a one to many relationship, users may also leave reviews about each beer, i.e. one beer will have many reviews.      

## Specs

* Landing page will have description of Bianchi's Brews and a link to ADD BREW.
* Landing page will display all beers.
* Landing page will display three most recently-added beers.
* Landing page will display the "most-reviewed" beer.
* Landing page will display beers made on the Death Star.
* On the beer detail page, users will be able to update and delete beers.
* On the detail page, users may leave reviews.
* Each review will consist of an author, review content, and rating.
* Code will utilize scopes and filter beers by date added, most reviewed, and Star Wars planet of origin.
* Validations will ensure that (1) All fields are filled in. (2) Ratings are integers between one and five. (3) Review content is between 50 and 250 characters.
* With `rails db:seed` and Gem 'Faker', the development database will seed 50 beers and **__260__** reviews.
* Flash messages will display after (1) A beer is created. (2) A beer is edited. (3) A beer is deleted. (4) A review is added.

## Setup

If you have a mac with both Ruby and Rails installed, use command line to navigate to your desktop and run the following command.

`git clone https://github.com/GreanBeetle/bianchi-brew-2.0`

Navigate to the root directory of bianchi-brew-2.0 and run.

`rails db:create`

`rails db:migrate`

`rails db:test:prepare`

`rails db:seed`

`rails server`

Navigate to `localhost:3000` in your browser and explore the app.

## Built With

* HTML
* SCSS
* Bootstrap
* Ruby
* Rails

## Authors

**John Rykken**

## Contact

_john.rykken@gmail.com_

## License

Licensed under the MIT License.

  <!-- ## Acknowledgments -->

Copyright (c) 2018 **_John Rykken_**
