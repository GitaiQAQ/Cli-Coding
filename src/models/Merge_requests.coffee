BaseModel = require '../BaseModel'

class Merge_requests extends BaseModel
  init:=>
    @debug "init()"

    @program.command "do_create"
      .description "创建 MergeRequest"
      .arguments('<user> <project>')
      .action @do_create

    @program.command "show_2"
      .description "显示某个 MergeRequest"
      .arguments('<user> <project> <iid>')
      .action @show_2

    @program.command "cancel"
      .description "取消 MergeRequest"
      .arguments('<user> <project> <iid>')
      .action @cancel

    @program.command "merge"
      .description "合并某个 MergeRequest"
      .arguments('<user> <project> <iid>')
      .action @merge

    @program.command "refuse"
      .description "拒绝某个 MergeRequest"
      .arguments('<user> <project> <iid>')
      .action @refuse

    @program.command "list_2"
      .description "MergeRequest 列表"
      .arguments('<user> <project> <status>')
      .action @list_2



  ###

   operationId  : do_create
   description  : 创建 MergeRequest
   args     	: user,project
   params 		: srcBranch,desBranch,title,content,reviewers,tasks,srcBranch,desBranch,title,content,reviewers,tasks,

  ###

  do_create:(user,project)=>
    @debug "do_create()"
    @coding.mergeRequests.do_create  user,project,params,(data) ->
      console.log data



  ###

   operationId  : show_2
   description  : 显示某个 MergeRequest
   args     	: user,project,iid
   params 		: diff,diff,

  ###

  show_2:(user,project,iid)=>
    @debug "show_2()"
    @coding.mergeRequests.show_2  user,project,iid,params,(data) ->
      console.log data



  ###

   operationId  : cancel
   description  : 取消 MergeRequest
   args     	: user,project,iid
   params 		: 

  ###

  cancel:(user,project,iid)=>
    @debug "cancel()"
    @coding.mergeRequests.cancel  user,project,iid,params,(data) ->
      console.log data



  ###

   operationId  : merge
   description  : 合并某个 MergeRequest
   args     	: user,project,iid
   params 		: message,del_source_branch,message,del_source_branch,

  ###

  merge:(user,project,iid)=>
    @debug "merge()"
    @coding.mergeRequests.merge  user,project,iid,params,(data) ->
      console.log data



  ###

   operationId  : refuse
   description  : 拒绝某个 MergeRequest
   args     	: user,project,iid
   params 		: 

  ###

  refuse:(user,project,iid)=>
    @debug "refuse()"
    @coding.mergeRequests.refuse  user,project,iid,params,(data) ->
      console.log data



  ###

   operationId  : list_2
   description  : MergeRequest 列表
   args     	: user,project,status
   params 		: page,pageSize,page,pageSize,

  ###

  list_2:(user,project,status)=>
    @debug "list_2()"
    @coding.mergeRequests.list_2  user,project,status,params,(data) ->
      console.log data




module.exports = (cmd) -> new Merge_requests cmd
