BaseModel = require '../BaseModel'

class Tasks extends BaseModel
  init:=>
    @debug "init()"

    @program.command "create"
      .description "创建任务"
      .arguments('<project>')
      .action @create

    @program.command "getTask"
      .description "创建任务"
      .arguments('<project> <id>')
      .action @getTask

    @program.command "listOfOwner"
      .description "列出某人的任务列表"
      .arguments('<project> <owner> <status>')
      .action @listOfOwner

    @program.command "taskCreating"
      .description "全局任务创建"
      .action @taskCreating

    @program.command "taskCountByUser"
      .description "任务统计信息"
      .arguments('<user> <project>')
      .action @taskCountByUser

    @program.command "update4client"
      .description "修改任务"
      .arguments('<user> <project> <id>')
      .action @update4client

    @program.command "pubComment"
      .description "创建任务评论"
      .arguments('<user> <project> <id>')
      .action @pubComment

    @program.command "deleteComment"
      .description "删除任务评论"
      .arguments('<user> <project> <id> <commentId>')
      .action @deleteComment

    @program.command "getComments"
      .description "获取任务评论"
      .arguments('<user> <project> <id>')
      .action @getComments

    @program.command "updateContent"
      .description "修改任务内容"
      .arguments('<user> <project> <id>')
      .action @updateContent

    @program.command "updateDeadline"
      .description "修改任务截止日期"
      .arguments('<user> <project> <id>')
      .action @updateDeadline

    @program.command "getDescription"
      .description "获取任务描述"
      .arguments('<user> <project> <id>')
      .action @getDescription

    @program.command "addTaskLabel"
      .description "添加任务标签"
      .arguments('<user> <project> <id> <labelId>')
      .action @addTaskLabel

    @program.command "operateTaskLabels"
      .description "批量操作任务标签"
      .arguments('<user> <project> <id>')
      .action @operateTaskLabels

    @program.command "updateOwner"
      .description "修改任务执行者"
      .arguments('<user> <project> <id>')
      .action @updateOwner

    @program.command "updatePriority"
      .description "修改任务优先级"
      .arguments('<user> <project> <id>')
      .action @updatePriority

    @program.command "updateStatus"
      .description "修改任务状态"
      .arguments('<user> <project> <id>')
      .action @updateStatus

    @program.command "watch_2"
      .description "关注任务"
      .arguments('<user> <project> <id>')
      .action @watch_2

    @program.command "pageTaskWatchers"
      .description "关注该任务的用户"
      .arguments('<user> <project> <id>')
      .action @pageTaskWatchers

    @program.command "userTasksCount"
      .description " 获取当前用户项目的已完成、正在进行的、关注的数值"
      .arguments('<user> <project>')
      .action @userTasksCount

    @program.command "userTasksCountInProject"
      .description "统计所有 已完成 和 正在处理 的任务数"
      .arguments('<user> <project>')
      .action @userTasksCountInProject

    @program.command "getTaskByLabel"
      .description "查询标签下的任务列表"
      .arguments('<user> <project> <id>')
      .action @getTaskByLabel

    @program.command "userTasksOfProject"
      .description "列出当前用户某项目某状态的任务列表"
      .arguments('<user> <project> <status>')
      .action @userTasksOfProject

    @program.command "list_5"
      .description "任务列表"
      .arguments('<user> <project> <status>')
      .action @list_5

    @program.command "userTasks"
      .description "当前用户某状态的任务列表"
      .arguments('<user> <status>')
      .action @userTasks



  ###

   operationId  : create
   description  : 创建任务
   args     	: project
   params 		: owner_id,priority,deadline,description,content,labels,watchers,owner_id,priority,deadline,description,content,labels,watchers,

  ###

  create:(project)=>
    @debug "create()"
    @coding.tasks.create  project,params,(data) ->
      console.log data



  ###

   operationId  : getTask
   description  : 创建任务
   args     	: project,id
   params 		: parseDescription,parseDescription,

  ###

  getTask:(project,id)=>
    @debug "getTask()"
    @coding.tasks.getTask  project,id,params,(data) ->
      console.log data



  ###

   operationId  : listOfOwner
   description  : 列出某人的任务列表
   args     	: project,owner,status
   params 		: page,pageSize,page,pageSize,

  ###

  listOfOwner:(project,owner,status)=>
    @debug "listOfOwner()"
    @coding.tasks.listOfOwner  project,owner,status,params,(data) ->
      console.log data



  ###

   operationId  : taskCreating
   description  : 全局任务创建
   args     	: 
   params 		: 

  ###

  taskCreating:()=>
    @debug "taskCreating()"
    @coding.tasks.taskCreating params,(data) ->
      console.log data



  ###

   operationId  : taskCountByUser
   description  : 任务统计信息
   args     	: user,project
   params 		: 

  ###

  taskCountByUser:(user,project)=>
    @debug "taskCountByUser()"
    @coding.tasks.taskCountByUser  user,project,params,(data) ->
      console.log data



  ###

   operationId  : update4client
   description  : 修改任务
   args     	: user,project,id
   params 		: status,priority,id,owner_id,deadline,description,content,status,priority,id,owner_id,deadline,description,content,

  ###

  update4client:(user,project,id)=>
    @debug "update4client()"
    @coding.tasks.update4client  user,project,id,params,(data) ->
      console.log data



  ###

   operationId  : pubComment
   description  : 创建任务评论
   args     	: user,project,id
   params 		: 

  ###

  pubComment:(user,project,id)=>
    @debug "pubComment()"
    @coding.tasks.pubComment  user,project,id,params,(data) ->
      console.log data



  ###

   operationId  : deleteComment
   description  : 删除任务评论
   args     	: user,project,id,commentId
   params 		: 

  ###

  deleteComment:(user,project,id,commentId)=>
    @debug "deleteComment()"
    @coding.tasks.deleteComment  user,project,id,commentId,params,(data) ->
      console.log data



  ###

   operationId  : getComments
   description  : 获取任务评论
   args     	: user,project,id
   params 		: page,pageSize,page,pageSize,

  ###

  getComments:(user,project,id)=>
    @debug "getComments()"
    @coding.tasks.getComments  user,project,id,params,(data) ->
      console.log data



  ###

   operationId  : updateContent
   description  : 修改任务内容
   args     	: user,project,id
   params 		: content,id,content,id,

  ###

  updateContent:(user,project,id)=>
    @debug "updateContent()"
    @coding.tasks.updateContent  user,project,id,params,(data) ->
      console.log data



  ###

   operationId  : updateDeadline
   description  : 修改任务截止日期
   args     	: user,project,id
   params 		: deadline,id,deadline,id,

  ###

  updateDeadline:(user,project,id)=>
    @debug "updateDeadline()"
    @coding.tasks.updateDeadline  user,project,id,params,(data) ->
      console.log data



  ###

   operationId  : getDescription
   description  : 获取任务描述
   args     	: user,project,id
   params 		: 

  ###

  getDescription:(user,project,id)=>
    @debug "getDescription()"
    @coding.tasks.getDescription  user,project,id,params,(data) ->
      console.log data



  ###

   operationId  : addTaskLabel
   description  : 添加任务标签
   args     	: user,project,id,labelId
   params 		: 

  ###

  addTaskLabel:(user,project,id,labelId)=>
    @debug "addTaskLabel()"
    @coding.tasks.addTaskLabel  user,project,id,labelId,params,(data) ->
      console.log data



  ###

   operationId  : operateTaskLabels
   description  : 批量操作任务标签
   args     	: user,project,id
   params 		: label_id,label_id,

  ###

  operateTaskLabels:(user,project,id)=>
    @debug "operateTaskLabels()"
    @coding.tasks.operateTaskLabels  user,project,id,params,(data) ->
      console.log data



  ###

   operationId  : updateOwner
   description  : 修改任务执行者
   args     	: user,project,id
   params 		: owner_id,id,owner_id,id,

  ###

  updateOwner:(user,project,id)=>
    @debug "updateOwner()"
    @coding.tasks.updateOwner  user,project,id,params,(data) ->
      console.log data



  ###

   operationId  : updatePriority
   description  : 修改任务优先级
   args     	: user,project,id
   params 		: priority,id,priority,id,

  ###

  updatePriority:(user,project,id)=>
    @debug "updatePriority()"
    @coding.tasks.updatePriority  user,project,id,params,(data) ->
      console.log data



  ###

   operationId  : updateStatus
   description  : 修改任务状态
   args     	: user,project,id
   params 		: status,id,status,id,

  ###

  updateStatus:(user,project,id)=>
    @debug "updateStatus()"
    @coding.tasks.updateStatus  user,project,id,params,(data) ->
      console.log data



  ###

   operationId  : watch_2
   description  : 关注任务
   args     	: user,project,id
   params 		: 

  ###

  watch_2:(user,project,id)=>
    @debug "watch_2()"
    @coding.tasks.watch_2  user,project,id,params,(data) ->
      console.log data



  ###

   operationId  : pageTaskWatchers
   description  : 关注该任务的用户
   args     	: user,project,id
   params 		: page,pageSize,page,pageSize,

  ###

  pageTaskWatchers:(user,project,id)=>
    @debug "pageTaskWatchers()"
    @coding.tasks.pageTaskWatchers  user,project,id,params,(data) ->
      console.log data



  ###

   operationId  : userTasksCount
   description  :  获取当前用户项目的已完成、正在进行的、关注的数值
   args     	: user,project
   params 		: 

  ###

  userTasksCount:(user,project)=>
    @debug "userTasksCount()"
    @coding.tasks.userTasksCount  user,project,params,(data) ->
      console.log data



  ###

   operationId  : userTasksCountInProject
   description  : 统计所有 已完成 和 正在处理 的任务数
   args     	: user,project
   params 		: 

  ###

  userTasksCountInProject:(user,project)=>
    @debug "userTasksCountInProject()"
    @coding.tasks.userTasksCountInProject  user,project,params,(data) ->
      console.log data



  ###

   operationId  : getTaskByLabel
   description  : 查询标签下的任务列表
   args     	: user,project,id
   params 		: page,pageSize,page,pageSize,

  ###

  getTaskByLabel:(user,project,id)=>
    @debug "getTaskByLabel()"
    @coding.tasks.getTaskByLabel  user,project,id,params,(data) ->
      console.log data



  ###

   operationId  : userTasksOfProject
   description  : 列出当前用户某项目某状态的任务列表
   args     	: user,project,status
   params 		: page,pageSize,page,pageSize,

  ###

  userTasksOfProject:(user,project,status)=>
    @debug "userTasksOfProject()"
    @coding.tasks.userTasksOfProject  user,project,status,params,(data) ->
      console.log data



  ###

   operationId  : list_5
   description  : 任务列表
   args     	: user,project,status
   params 		: page,pageSize,page,pageSize,

  ###

  list_5:(user,project,status)=>
    @debug "list_5()"
    @coding.tasks.list_5  user,project,status,params,(data) ->
      console.log data



  ###

   operationId  : userTasks
   description  : 当前用户某状态的任务列表
   args     	: user,status
   params 		: page,pageSize,page,pageSize,

  ###

  userTasks:(user,status)=>
    @debug "userTasks()"
    @coding.tasks.userTasks  user,status,params,(data) ->
      console.log data




module.exports = (cmd) -> new Tasks cmd
