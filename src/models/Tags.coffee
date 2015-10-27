BaseModel = require '../BaseModel'

class Tags extends BaseModel
  init:=>
    @debug "init()"

    @program.command "list_4"
      .description "标签列表"
      .arguments('<user> <project>')
      .action @list_4

    @program.command "createTag"
      .description "创建标签"
      .arguments('<user> <project>')
      .action @createTag

    @program.command "deleteTag"
      .description "删除标签"
      .arguments('<user> <project>')
      .action @deleteTag



  ###

   operationId  : list_4
   description  : 标签列表
   args     	: user,project
   params 		: page,pageSize,page,pageSize,

  ###

  list_4:(user,project)=>
    @debug "list_4()"
    @coding.tags.list_4  user,project,params,(data) ->
      console.log data



  ###

   operationId  : createTag
   description  : 创建标签
   args     	: user,project
   params 		: tag_name,tag_point,message,tag_name,tag_point,message,

  ###

  createTag:(user,project)=>
    @debug "createTag()"
    @coding.tags.createTag  user,project,params,(data) ->
      console.log data



  ###

   operationId  : deleteTag
   description  : 删除标签
   args     	: user,project
   params 		: tag_name,tag_name,

  ###

  deleteTag:(user,project)=>
    @debug "deleteTag()"
    @coding.tags.deleteTag  user,project,params,(data) ->
      console.log data




module.exports = (cmd) -> new Tags cmd
