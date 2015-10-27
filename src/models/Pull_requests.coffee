BaseModel = require '../BaseModel'

class Pull_requests extends BaseModel
  init:=>
    @debug "init()"

    @program.command "create"
      .description "创建 PullRequest"
      .arguments('<user> <project>')
      .action @create

    @program.command "show_3"
      .description "获取某个 PullRequest"
      .arguments('<user> <project> <iid>')
      .action @show_3

    @program.command "cancel_1"
      .description "取消 PullRequest"
      .arguments('<user> <project> <iid>')
      .action @cancel_1

    @program.command "comments"
      .description "PullRequest 评论列表"
      .arguments('<user> <project> <iid>')
      .action @comments

    @program.command "showCommits"
      .description "获取某个 PullRequest 的评论"
      .arguments('<user> <project> <iid>')
      .action @showCommits

    @program.command "merge_1"
      .description "合并 PullRequest"
      .arguments('<user> <project> <iid>')
      .action @merge_1

    @program.command "refuse_1"
      .description "拒绝 PullRequest"
      .arguments('<user> <project> <iid>')
      .action @refuse_1

    @program.command "list_3"
      .description "PullRequest 列表"
      .arguments('<user> <project> <status>')
      .action @list_3



  ###

   operationId  : create
   description  : 创建 PullRequest
   args     	: user,project
   params 		: src_branch,des_user_name,des_project_name,des_branch,diff,src_branch,des_user_name,des_project_name,des_branch,diff,

  ###

  create:(user,project)=>
    @debug "create()"
    @coding.pullRequests.create  user,project,params,(data) ->
      console.log data



  ###

   operationId  : show_3
   description  : 获取某个 PullRequest
   args     	: user,project,iid
   params 		: diff,diff,

  ###

  show_3:(user,project,iid)=>
    @debug "show_3()"
    @coding.pullRequests.show_3  user,project,iid,params,(data) ->
      console.log data



  ###

   operationId  : cancel_1
   description  : 取消 PullRequest
   args     	: user,project,iid
   params 		: 

  ###

  cancel_1:(user,project,iid)=>
    @debug "cancel_1()"
    @coding.pullRequests.cancel_1  user,project,iid,params,(data) ->
      console.log data



  ###

   operationId  : comments
   description  : PullRequest 评论列表
   args     	: user,project,iid
   params 		: 

  ###

  comments:(user,project,iid)=>
    @debug "comments()"
    @coding.pullRequests.comments  user,project,iid,params,(data) ->
      console.log data



  ###

   operationId  : showCommits
   description  : 获取某个 PullRequest 的评论
   args     	: user,project,iid
   params 		: 

  ###

  showCommits:(user,project,iid)=>
    @debug "showCommits()"
    @coding.pullRequests.showCommits  user,project,iid,params,(data) ->
      console.log data



  ###

   operationId  : merge_1
   description  : 合并 PullRequest
   args     	: user,project,iid
   params 		: message,message,

  ###

  merge_1:(user,project,iid)=>
    @debug "merge_1()"
    @coding.pullRequests.merge_1  user,project,iid,params,(data) ->
      console.log data



  ###

   operationId  : refuse_1
   description  : 拒绝 PullRequest
   args     	: user,project,iid
   params 		: 

  ###

  refuse_1:(user,project,iid)=>
    @debug "refuse_1()"
    @coding.pullRequests.refuse_1  user,project,iid,params,(data) ->
      console.log data



  ###

   operationId  : list_3
   description  : PullRequest 列表
   args     	: user,project,status
   params 		: page,pageSize,page,pageSize,

  ###

  list_3:(user,project,status)=>
    @debug "list_3()"
    @coding.pullRequests.list_3  user,project,status,params,(data) ->
      console.log data




module.exports = (cmd) -> new Pull_requests cmd
