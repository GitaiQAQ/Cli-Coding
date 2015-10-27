BaseModel = require '../BaseModel'

class Commits extends BaseModel
  init:=>
    @debug "init()"

    @program.command "show"
      .description "commit 列表"
      .arguments('<user> <project> <commit>')
      .action @show



  ###

   operationId  : show
   description  : commit 列表
   args     	: user,project,commit
   params 		: diff,w,diff,w,

  ###

  show:(user,project,commit)=>
    @debug "show()"
    @coding.commits.show  user,project,commit,params,(data) ->
      console.log data




module.exports = (cmd) -> new Commits cmd
