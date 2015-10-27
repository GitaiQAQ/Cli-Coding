BaseModel = require '../BaseModel'

class Blobs extends BaseModel
  init:=>
    @debug "init()"

    @program.command "blob"
      .description "获取 blob"
      .arguments('<user> <project> <blob>')
      .action @blob



  ###

   operationId  : blob
   description  : 获取 blob
   args     	: user,project,blob
   params 		: 

  ###

  blob:(user,project,blob)=>
    @debug "blob()"
    @coding.blobs.blob  user,project,blob,params,(data) ->
      console.log data




module.exports = (cmd) -> new Blobs cmd
