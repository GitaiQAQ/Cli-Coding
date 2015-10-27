{CmdBase} = require './CmdBase'
packageInfo = require "../package.json"
config = require "../config"

class Cmd extends CmdBase
  handleOptions: =>
    super
    @program
  		.usage "[options]"
  		.description 'A simple command-line tool for coding.net by nodejs'
  		.version packageInfo.version

module.exports = ->
	return new Cmd config()

module.exports.Cmd = Cmd
