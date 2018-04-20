# **BIANCHI's BREWS**

## April 20, 2018

####  by John Rykken

#### Bianchi's Brews is a code school project and simple web application. It utilizes CRUD functionality, Rails, and a pSQL database. The core functionality allows users to create, read, update, and delete a list of beers from around the world. In demonstration of a one to many relationship, users may also leave reviews about each beer, i.e. one beer will have many reviews. The applications basic specs are these:      

## Specs

* Landing page will have description of Bianchi's Brews and navbar links to (1) Beers and (2) Reviews.
* Landing page will display three most recently-added beers.
* Landing page will display the "most-reviewed" beer.
* On the beer page, users will be able to add, update, and delete beers.
* The beer page will list all beers. Each beer will be a link to its detail page.
* On the detail page, users may leave reviews.
* Each review will consist of an author, review_content, and rating.
* Code will utilize scopes to filter beers by date-added, most-reviewed, and country of origin.
* Beers page will display beers made in Oregon.
* Validations will ensure the following: (1) All fields are filled in. (2) Ratings are integers between one and five. (3) Review_content is between 50 and 250 characters.
* With `rails db:seed` and Gem 'Faker', the development database will seed 50 beers and 250 reviews.
* Flash messages will display after the following actions are completed. (1) Beer created. (2) Beer edited. (3) Beer deleted. (4) Review created. (5) Review edited. (6) Review deleted.

## Setup

WRITE THIS

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
