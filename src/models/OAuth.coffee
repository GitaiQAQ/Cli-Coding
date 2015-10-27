BaseModel = require '../BaseModel'

class Oauth extends BaseModel
  init:=>
    @debug "init()"
    @program.command "login"
      .action @login

    @program.command "logout"
      .alias 'clear'
      .action @logout

  login:=>
    @debug "login()"
    @coding.oauth.authorize @opts.clientId,@opts.clientSecret,@opts.port,@opts.scope

  logout:=>
    @debug "logout()"
    @coding.oauth.clean

module.exports = (cmd) -> new Oauth cmd