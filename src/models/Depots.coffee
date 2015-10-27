BaseModel = require '../BaseModel'

class Depots extends BaseModel
  init:=>
    @debug "init()"

    @program.command "index"
      .description "获取仓库信息"
      .arguments('<user> <project>')
      .action @index

    @program.command "fork"
      .description "fork"
      .arguments('<user> <project>')
      .action @fork

    @program.command "forks"
      .description "项目被fork的列表"
      .arguments('<user> <project>')
      .action @forks

    @program.command "createWebHook"
      .description "创建 webhook"
      .arguments('<user> <project>')
      .action @createWebHook

    @program.command "getWebHook"
      .description "获取 webhook"
      .arguments('<user> <project> <id>')
      .action @getWebHook

    @program.command "listWebHook"
      .description "列出项目设置的 webhook"
      .arguments('<user> <project>')
      .action @listWebHook

    @program.command "importRepo"
      .description "导入仓库"
      .arguments('<user> <project>')
      .action @importRepo

    @program.command "initDepot"
      .description "初始化仓库"
      .arguments('<user> <project>')
      .action @initDepot



  ###

   operationId  : index
   description  : 获取仓库信息
   args     	: user,project
   params 		: 

  ###

  index:(user,project)=>
    @debug "index()"
    @coding.depots.index  user,project,params,(data) ->
      console.log data



  ###

   operationId  : fork
   description  : fork
   args     	: user,project
   params 		: 

  ###

  fork:(user,project)=>
    @debug "fork()"
    @coding.depots.fork  user,project,params,(data) ->
      console.log data



  ###

   operationId  : forks
   description  : 项目被fork的列表
   args     	: user,project
   params 		: 

  ###

  forks:(user,project)=>
    @debug "forks()"
    @coding.depots.forks  user,project,params,(data) ->
      console.log data



  ###

   operationId  : createWebHook
   description  : 创建 webhook
   args     	: user,project
   params 		: hook_url,token,type_push,type_mr_pr,type_topic,type_member,type_comment,type_document,type_watch,type_star,type_task,hook_url,token,type_push,type_mr_pr,type_topic,type_member,type_comment,type_document,type_watch,type_star,type_task,

  ###

  createWebHook:(user,project)=>
    @debug "createWebHook()"
    @coding.depots.createWebHook  user,project,params,(data) ->
      console.log data



  ###

   operationId  : getWebHook
   description  : 获取 webhook
   args     	: user,project,id
   params 		: 

  ###

  getWebHook:(user,project,id)=>
    @debug "getWebHook()"
    @coding.depots.getWebHook  user,project,id,params,(data) ->
      console.log data



  ###

   operationId  : listWebHook
   description  : 列出项目设置的 webhook
   args     	: user,project
   params 		: 

  ###

  listWebHook:(user,project)=>
    @debug "listWebHook()"
    @coding.depots.listWebHook  user,project,params,(data) ->
      console.log data



  ###

   operationId  : importRepo
   description  : 导入仓库
   args     	: user,project
   params 		: origin_url,vcs_type,origin_url,vcs_type,

  ###

  importRepo:(user,project)=>
    @debug "importRepo()"
    @coding.depots.importRepo  user,project,params,(data) ->
      console.log data



  ###

   operationId  : initDepot
   description  : 初始化仓库
   args     	: user,project
   params 		: type,gitReadmeEnabled,gitIgnore,gitLicense,importFrom,vcsType,type,gitReadmeEnabled,gitIgnore,gitLicense,importFrom,vcsType,

  ###

  initDepot:(user,project)=>
    @debug "initDepot()"
    @coding.depots.initDepot  user,project,params,(data) ->
      console.log data




module.exports = (cmd) -> new Depots cmd
