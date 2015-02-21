## What's this?
[![NPM version][npm-image]][npm-url]
[![Dependency Status][david-image]][david-url]
[![License][license-image]][license-url]
[![Downloads][downloads-image]][downloads-url]

A plugin that enables [ASPAX](http://aspax.github.io) to handle [IcedCoffeeScript](http://maxtaco.github.io/coffee-script) files.

## Installation
Type this in the folder where you're running ASPAX:

    npm install aspax-iced-handler

If you're running ASPAX in a Node.js application root folder, consider using the `--save-dev` option to avoid deploying this plugin to your production environment:

    npm install aspax-iced-handler --save-dev

## Usage
Simply add `.iced` source files in `aspax.yml`:

    app.js:
      - lib.js
      - script-1.iced|bare
      - script-2.iced

## Available flags

- `bare`: compile without the top-level function safety wrapper - see more [here](http://maxtaco.github.io/coffee-script/#usage).

  Basically, this:

        $ -> console.log 'hi!'

  ...compiles to this **with** the `bare` flag:

        $(function() {
          return console.log("hi!");
        });

  ...and to this **without** the flag:

        (function() {
          $(function() {
            return console.log("hi!");
          });
        }).call(this);

## Endorsing the author
If you find this piece of software useful, please [tweet about ASPAX](http://twitter.com/share?text=Checkout%20ASPAX%2C%20the%20simple%20Node.js%20asset%20packager!&url=http%3A%2F%2Faspax.github.io&hashtags=aspax&via=icflorescu) and endorse me on LinkedIn:

[![Ionut-Cristian Florescu on LinkedIn](https://static.licdn.com/scds/common/u/img/webpromo/btn_viewmy_160x25.png)](https://www.linkedin.com/in/icflorescu)

[npm-image]: https://img.shields.io/npm/v/aspax-iced-handler.svg?style=flat-square
[npm-url]: https://npmjs.org/package/aspax-iced-handler
[david-image]: http://img.shields.io/david/icflorescu/aspax-iced-handler.svg?style=flat-square
[david-url]: https://david-dm.org/icflorescu/aspax-iced-handler
[license-image]: http://img.shields.io/npm/l/aspax-iced-handler.svg?style=flat-square
[license-url]: LICENSE
[downloads-image]: http://img.shields.io/npm/dm/aspax-iced-handler.svg?style=flat-square
[downloads-url]: https://npmjs.org/package/aspax-iced-handler
