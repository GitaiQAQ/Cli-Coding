debug = require('debug') 'coding:BaseModel'


class module.exports
  constructor: (@program) ->
    do @_init

  load: (model) =>
    require("./Models/#{model}") @program

  _init: =>
    @debug =   require('debug') "coding:Models:#{@constructor.name}"

    do @init if @init?