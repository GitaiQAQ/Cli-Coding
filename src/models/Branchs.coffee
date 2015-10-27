BaseModel = require '../BaseModel'

class Branchs extends BaseModel
  init:=>
    @debug "init()"

    @program.command "setDefaultBranch"
      .description "设置默认分支"
      .arguments('<user> <project>')
      .action @setDefaultBranch

    @program.command "list"
      .description "分页显示分支列表"
      .arguments('<user> <project>')
      .action @list

    @program.command "createBranch"
      .description "新建分支"
      .arguments('<user> <project>')
      .action @createBranch

    @program.command "deleteBranch"
      .description "删除分支"
      .arguments('<user> <project>')
      .action @deleteBranch

    @program.command "addProtectedBranchMember"
      .description "添加保护分支成员"
      .arguments('<user> <project>')
      .action @addProtectedBranchMember

    @program.command "disableProtectedBranch"
      .description "取消保护分支"
      .arguments('<user> <project>')
      .action @disableProtectedBranch

    @program.command "enableProtectedBranch"
      .description "设置保护分支"
      .arguments('<user> <project>')
      .action @enableProtectedBranch

    @program.command "listProtectedBranchMember"
      .description "列出保护分支中的成员"
      .arguments('<user> <project>')
      .action @listProtectedBranchMember

    @program.command "removeProtectedBranchMember"
      .description "删除保护分支成员"
      .arguments('<user> <project>')
      .action @removeProtectedBranchMember



  ###

   operationId  : setDefaultBranch
   description  : 设置默认分支
   args     	: user,project
   params 		: default_branch,default_branch,

  ###

  setDefaultBranch:(user,project)=>
    @debug "setDefaultBranch()"
    @coding.branchs.setDefaultBranch  user,project,params,(data) ->
      console.log data



  ###

   operationId  : list
   description  : 分页显示分支列表
   args     	: user,project
   params 		: page,pageSize,page,pageSize,

  ###

  list:(user,project)=>
    @debug "list()"
    @coding.branchs.list  user,project,params,(data) ->
      console.log data



  ###

   operationId  : createBranch
   description  : 新建分支
   args     	: user,project
   params 		: branch_name,start_point,branch_name,start_point,

  ###

  createBranch:(user,project)=>
    @debug "createBranch()"
    @coding.branchs.createBranch  user,project,params,(data) ->
      console.log data



  ###

   operationId  : deleteBranch
   description  : 删除分支
   args     	: user,project
   params 		: branch_name,branch_name,

  ###

  deleteBranch:(user,project)=>
    @debug "deleteBranch()"
    @coding.branchs.deleteBranch  user,project,params,(data) ->
      console.log data



  ###

   operationId  : addProtectedBranchMember
   description  : 添加保护分支成员
   args     	: user,project
   params 		: branch_name,target_global_key,branch_name,target_global_key,

  ###

  addProtectedBranchMember:(user,project)=>
    @debug "addProtectedBranchMember()"
    @coding.branchs.addProtectedBranchMember  user,project,params,(data) ->
      console.log data



  ###

   operationId  : disableProtectedBranch
   description  : 取消保护分支
   args     	: user,project
   params 		: branch_name,branch_name,

  ###

  disableProtectedBranch:(user,project)=>
    @debug "disableProtectedBranch()"
    @coding.branchs.disableProtectedBranch  user,project,params,(data) ->
      console.log data



  ###

   operationId  : enableProtectedBranch
   description  : 设置保护分支
   args     	: user,project
   params 		: branch_name,branch_name,

  ###

  enableProtectedBranch:(user,project)=>
    @debug "enableProtectedBranch()"
    @coding.branchs.enableProtectedBranch  user,project,params,(data) ->
      console.log data



  ###

   operationId  : listProtectedBranchMember
   description  : 列出保护分支中的成员
   args     	: user,project
   params 		: branch_name,branch_name,

  ###

  listProtectedBranchMember:(user,project)=>
    @debug "listProtectedBranchMember()"
    @coding.branchs.listProtectedBranchMember  user,project,params,(data) ->
      console.log data



  ###

   operationId  : removeProtectedBranchMember
   description  : 删除保护分支成员
   args     	: user,project
   params 		: branch_name,target_global_key,branch_name,target_global_key,

  ###

  removeProtectedBranchMember:(user,project)=>
    @debug "removeProtectedBranchMember()"
    @coding.branchs.removeProtectedBranchMember  user,project,params,(data) ->
      console.log data




module.exports = (cmd) -> new Branchs cmd
