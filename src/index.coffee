{CmdBase} = require './CmdBase'
packageInfo = require "../package.json"

class Cmd extends CmdBase
  handleOptions: =>
    super
    @program
  		.usage "[options]"
  		.description 'A simple command-line tool for coding.net by nodejs'
  		.version packageInfo.version

module.exports = (options) ->
	return new Cmd options

module.exports.Cmd = Cmd
