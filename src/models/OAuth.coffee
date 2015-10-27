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

  logout:=>
    @debug "logout()"

module.exports = (program) -> new Oauth program