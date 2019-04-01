# My Gallery app

A dynamic Ruby on Rails application where you can create your own gallery of your favourite artists and artworks! 

This was a simple starter project for Ruby on Rails designed to demonstrate a one to many relationship (an artist has many artworks). A blog about how this project was developed is published on Medium - https://medium.com/@ruthnewman/how-i-built-my-first-dynamic-web-app-1e1d6105b2ef

# CRUD functionalities

The home page of the site displays a list of artists in a user's gallery (the artists index page), along with links to add an artist (the artist new page), add an artwork (the artwork new page), or view a list of all artworks in the gallery (the artworks index page). Each artist included in the index page has a profile page (the artist show page) and can be removed from the gallery. Each artist's profile page in turn includes a list of artworks by the given artist, hyperlinked to the artwork show page, where an image of the artwork is displayed.

# Example

The seed data file (db/seeds.rb), if used (rails db:seed), includes a number of artists and artworks in order to demonstrate what a full gallery looks like. 

# Design

The minimalist CSS and Bootstrap user-interface design is intended to invoke a minimalist contemporary art gallery.
