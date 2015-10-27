BaseModel = require '../BaseModel'

class Historys extends BaseModel
  init:=>
    @debug "init()"

    @program.command "history"
      .description "获取代码的历史"
      .arguments('<user> <project> <commits>')
      .action @history



  ###

   operationId  : history
   description  : 获取代码的历史
   args     	: user,project,commits
   params 		: page,pageSize,page,pageSize,

  ###

  history:(user,project,commits)=>
    @debug "history()"
    @coding.historys.history  user,project,commits,params,(data) ->
      console.log data




module.exports = (cmd) -> new Historys cmd
