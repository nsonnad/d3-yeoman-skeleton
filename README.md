#D3 Yeoman Skeleton

A barebones D3 / Coffeescript / Sass setup built on [Yeoman](http://yeoman.io/), based on (and not much different from) the default [generator-webapp](https://github.com/yeoman/generator-webapp). Makes the following changes from the webapp generator:

* D3, RequireJS, Sass-bootstrap included by default
* Removed jQuery and Modernizr (jQuery still included in bower.json as it is required by sass-bootstrap)
* Some D3 boilerplate included
* Gruntfile altered to make automatic coffeescript building work

##Usage

You will need Grunt and Bower. If you haven't got those, run:

    `npm install -g yo grunt-cli bower`

Clone this repo, then run:

    `npm install && bower install`

Start visualizing with D3!