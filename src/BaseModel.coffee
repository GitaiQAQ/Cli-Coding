debug = require('debug') 'coding:BaseModel'


class module.exports
  constructor: (@cmd) ->
    do @_init

  load: (model) =>
    require("./Models/#{model}") @cmd

  _init: =>
    @debug =   require('debug') "coding:Models:#{@constructor.name}"

    @program =     @cmd.program
    @coding =     @cmd.coding
    @opts =     @cmd.opts

    do @init if @init?