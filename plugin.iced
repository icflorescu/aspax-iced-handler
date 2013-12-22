fs = require 'fs'

iced = require 'iced-coffee-script'

exports.compile = (file, options, callback) ->
  fs.readFile file, 'utf8', (err, contents) ->
    return callback err if err
    try
      output = iced.compile contents, bare: 'bare' in flags
    catch err
      return callback err
    callback null, output
