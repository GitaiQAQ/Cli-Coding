debug = require('debug') 'coding:BaseModel'

_ = require 'lodash'
Table = require 'cli-table'
prompt = require 'prompt'
crypto = require 'crypto'

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

  parseParames:(raw,header,query,body,formData)=>
    params =
      "headers":{},
      "qs":{},
      "form":{}

    for key of raw
      unless _.isEmpty(raw[key])
        if _.includes ["password","confirm_password","current_password"],key
          sha1 = crypto.createHash 'sha1'
          sha1.update raw[key]
          raw[key] = sha1.digest 'hex'

        if _.includes header,key
          params.headers[key]   =   raw[key]

        if _.includes query,key
          params.qs[key]        =   raw[key]

        if _.includes body,key
          params.form[key]      =   raw[key]
    return params

  showData:(data)=>
    if data.code != 0
      @transport data.msg
    else
      @transport data.data

  transport:(data)=>
    for key of data
      @table.push([@__("#{@constructor.name}.#{key}"),data[key]])

    console.log @table.toString()