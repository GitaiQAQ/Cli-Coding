BaseModel = require '../BaseModel'

class OAuth extends BaseModel
  init:=>
    @debug "init()"
    @program.command "authorize"
      .alias "auth"
      .action @authorize

    @program.command "clean"
      .action @clean

  authorize:=>
    @debug "login()"
    @coding.oauth.authorize @opts.clientId,@opts.clientSecret,@opts.port,@opts.scope,(data) =>
      @showData data

  clean:=>
    @debug "logout()"
    @coding.oauth.clean

module.exports = (cmd) -> new OAuth cmd