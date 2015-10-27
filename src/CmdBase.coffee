debug = require('debug') 'coding:CmdBase'
program = require "commander"

class module.exports.CmdBase
  constructor: (@options) ->
    do @handleOptions
    do @init
    debug "constructor()"

  handleOptions: =>
    debug "handleOptions()"
    @program = program

  init: =>
    debug "_init()"
    @debug =   require('debug') "coding:Models:#{@constructor.name}"

    @oauth = require('./models/OAuth') @program

    @program.parse process.argv
    @program.help()  if process.argv.length is 2