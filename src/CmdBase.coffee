debug = require('debug') 'coding:CmdBase'

program = require "commander"
coding = require "../../Node-Coding"

class module.exports.CmdBase
  constructor: (@opts)->
    debug "constructor()"

    @program = program
    @coding = new coding @opts

    do @handleOptions
    do @init

  handleOptions: =>
    debug "handleOptions()"

  init: =>
    debug "_init()"

    @cmd = @
    @debug =   require('debug') "coding:Models:#{@constructor.name}"

    @oauth = require('./models/OAuth') @cmd
    @users = require('./models/Users') @cmd
    @projects = require('./models/Projects') @cmd
    @tasks = require('./models/Tasks') @cmd
    @tweets = require('./models/Tweets') @cmd
    @files = require('./models/Files') @cmd
    @depots = require('./models/Depots') @cmd
    @blobs = require('./models/Blobs') @cmd
    @branchs = require('./models/Branchs') @cmd
    @commits = require('./models/Commits') @cmd
    @historys = require('./models/Historys') @cmd
    @repoFiles = require('./models/RepoFiles') @cmd
    @mergeRequests = require('./models/MergeRequests') @cmd
    @pullRequests = require('./models/PullRequests') @cmd
    @tags = require('./models/Tags') @cmd
    @trees = require('./models/Trees') @cmd
    @projectTopics = require('./models/ProjectTopics') @cmd
    @keys = require('./models/Keys') @cmd

    @program.parse process.argv
    @program.help()  if process.argv.length is 2