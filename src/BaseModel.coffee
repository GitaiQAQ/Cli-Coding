debug = require('debug') 'coding:BaseModel'

_ = require 'lodash'
Table = require 'cli-table'
prompt = require 'prompt'

class module.exports
  constructor: (@cmd) ->
    do @_init

  load: (model) =>
    require("./Models/#{model}") @cmd

  _init: =>
    @debug =   require('debug') "coding:Models:#{@constructor.name}"

    if @cmd.opts.modules
      unless _.includes @cmd.opts.modules,@constructor.name
        debug @constructor.name
        return
    do prompt.start
    prompt.message = "Coding"

    i18n = require('i18n')
    i18n.configure
      locales: ['Jpan','en','zh-CN','zh-TW']
      directory: __dirname + '/../locales'

    i18n.setLocale @cmd.opts.lang
    @__ = i18n.__

    @program =     @cmd.program
    @coding =     @cmd.coding
    @opts =     @cmd.opts
    @prompt = prompt

    @transport = @cmd.opts.transport || @transport

    @table = new Table
      chars: { 'top': '═' , 'top-mid': '╤' , 'top-left': '╔' , 'top-right': '╗'
           , 'bottom': '═' , 'bottom-mid': '╧' , 'bottom-left': '╚' , 'bottom-right': '╝'
           , 'left': '║' , 'left-mid': '╟' , 'mid': '─' , 'mid-mid': '┼'
           , 'right': '║' , 'right-mid': '╢' , 'middle': '│' }

    do @init if @init?

  showData:(data)=>
    @transport data

  transport:(data)=>
    unless data.code
      data = data.data
      for key of data
        @table.push([@__("#{@constructor.name}.#{key}"),data[key]])

      console.log @table.toString()
    else
      console.log data