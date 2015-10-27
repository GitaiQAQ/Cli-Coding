BaseModel = require '../BaseModel'

class Keys extends BaseModel
  init:=>
    @debug "init()"

    @program.command "show_1"
      .description "通过KeyId获取个人公钥"
      .arguments('<global_key> <keyId>')
      .action @show_1

    @program.command "list_1"
      .description "列出个人公钥"
      .arguments('<global_key>')
      .action @list_1

    @program.command "bindDeployKey"
      .description "绑定部署公钥"
      .arguments('<global_key> <project> <id>')
      .action @bindDeployKey

    @program.command "saveDeployKey"
      .description "新建部署公钥"
      .arguments('<global_key> <project>')
      .action @saveDeployKey

    @program.command "listDeployKeys"
      .description "列出部署公钥"
      .arguments('<global_key> <project>')
      .action @listDeployKeys

    @program.command "unBindDeployKey"
      .description "解绑部署公钥"
      .arguments('<global_key> <project> <id>')
      .action @unBindDeployKey



  ###

   operationId  : show_1
   description  : 通过KeyId获取个人公钥
   args     	: global_key,keyId
   params 		: 

  ###

  show_1:(global_key,keyId)=>
    @debug "show_1()"
    @coding.keys.show_1  global_key,keyId,params,(data) ->
      console.log data



  ###

   operationId  : list_1
   description  : 列出个人公钥
   args     	: global_key
   params 		: withIDEKey,withIDEKey,

  ###

  list_1:(global_key)=>
    @debug "list_1()"
    @coding.keys.list_1  global_key,params,(data) ->
      console.log data



  ###

   operationId  : bindDeployKey
   description  : 绑定部署公钥
   args     	: global_key,project,id
   params 		: 

  ###

  bindDeployKey:(global_key,project,id)=>
    @debug "bindDeployKey()"
    @coding.keys.bindDeployKey  global_key,project,id,params,(data) ->
      console.log data



  ###

   operationId  : saveDeployKey
   description  : 新建部署公钥
   args     	: global_key,project
   params 		: title,content,title,content,

  ###

  saveDeployKey:(global_key,project)=>
    @debug "saveDeployKey()"
    @coding.keys.saveDeployKey  global_key,project,params,(data) ->
      console.log data



  ###

   operationId  : listDeployKeys
   description  : 列出部署公钥
   args     	: global_key,project
   params 		: 

  ###

  listDeployKeys:(global_key,project)=>
    @debug "listDeployKeys()"
    @coding.keys.listDeployKeys  global_key,project,params,(data) ->
      console.log data



  ###

   operationId  : unBindDeployKey
   description  : 解绑部署公钥
   args     	: global_key,project,id
   params 		: 

  ###

  unBindDeployKey:(global_key,project,id)=>
    @debug "unBindDeployKey()"
    @coding.keys.unBindDeployKey  global_key,project,id,params,(data) ->
      console.log data




module.exports = (cmd) -> new Keys cmd
