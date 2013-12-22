## What's this?
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
If you find this piece of software useful, please [![endorse](https://api.coderwall.com/icflorescu/endorsecount.png)](https://coderwall.com/icflorescu) me on Coderwall!
