BaseModel = require '../BaseModel'

class Project_topics extends BaseModel
  init:=>
    @debug "init()"

    @program.command "projectTopicList"
      .description "项目讨论列表"
      .arguments('<user> <project>')
      .action @projectTopicList

    @program.command "topicCount"
      .description "所有讨论的个数和我的讨论的个数"
      .arguments('<user> <project>')
      .action @topicCount

    @program.command "getProjectTopicByLabel"
      .description "通过标签获得讨论列表"
      .arguments('<user> <project> <id>')
      .action @getProjectTopicByLabel

    @program.command "getMyLabelByProject"
      .description "所有讨论的个数和我的讨论的个数"
      .arguments('<user> <project>')
      .action @getMyLabelByProject

    @program.command "myProjectTopicList"
      .description "我的讨论"
      .arguments('<user> <project>')
      .action @myProjectTopicList

    @program.command "myWatchingProjectTopics"
      .description "获取我关注的讨论列表"
      .arguments('<user> <project>')
      .action @myWatchingProjectTopics

    @program.command "projectTopicDetail"
      .description "讨论详情"
      .arguments('<user> <project> <id>')
      .action @projectTopicDetail

    @program.command "projectTopicComments"
      .description "讨论评论列表"
      .arguments('<user> <project> <id>')
      .action @projectTopicComments

    @program.command "addTopicLabel"
      .description "讨论添加标签"
      .arguments('<user> <project> <id> <labelId>')
      .action @addTopicLabel

    @program.command "operateTopicLabels"
      .description "批量操作讨论标签"
      .arguments('<user> <project> <id>')
      .action @operateTopicLabels

    @program.command "watch_1"
      .description "关注讨论"
      .arguments('<user> <project> <id>')
      .action @watch_1

    @program.command "getTopicWatchers"
      .description "获取关注该讨论的用户"
      .arguments('<user> <project> <id>')
      .action @getTopicWatchers



  ###

   operationId  : projectTopicList
   description  : 项目讨论列表
   args     	: user,project
   params 		: orderBy,page,pageSize,orderBy,page,pageSize,

  ###

  projectTopicList:(user,project)=>
    @debug "projectTopicList()"
    @coding.projectTopics.projectTopicList  user,project,params,(data) ->
      console.log data



  ###

   operationId  : topicCount
   description  : 所有讨论的个数和我的讨论的个数
   args     	: user,project
   params 		: 

  ###

  topicCount:(user,project)=>
    @debug "topicCount()"
    @coding.projectTopics.topicCount  user,project,params,(data) ->
      console.log data



  ###

   operationId  : getProjectTopicByLabel
   description  : 通过标签获得讨论列表
   args     	: user,project,id
   params 		: orderBy,page,pageSize,orderBy,page,pageSize,

  ###

  getProjectTopicByLabel:(user,project,id)=>
    @debug "getProjectTopicByLabel()"
    @coding.projectTopics.getProjectTopicByLabel  user,project,id,params,(data) ->
      console.log data



  ###

   operationId  : getMyLabelByProject
   description  : 所有讨论的个数和我的讨论的个数
   args     	: user,project
   params 		: 

  ###

  getMyLabelByProject:(user,project)=>
    @debug "getMyLabelByProject()"
    @coding.projectTopics.getMyLabelByProject  user,project,params,(data) ->
      console.log data



  ###

   operationId  : myProjectTopicList
   description  : 我的讨论
   args     	: user,project
   params 		: orderBy,page,pageSize,orderBy,page,pageSize,

  ###

  myProjectTopicList:(user,project)=>
    @debug "myProjectTopicList()"
    @coding.projectTopics.myProjectTopicList  user,project,params,(data) ->
      console.log data



  ###

   operationId  : myWatchingProjectTopics
   description  : 获取我关注的讨论列表
   args     	: user,project
   params 		: orderBy,page,pageSize,orderBy,page,pageSize,

  ###

  myWatchingProjectTopics:(user,project)=>
    @debug "myWatchingProjectTopics()"
    @coding.projectTopics.myWatchingProjectTopics  user,project,params,(data) ->
      console.log data



  ###

   operationId  : projectTopicDetail
   description  : 讨论详情
   args     	: user,project,id
   params 		: type,toc,type,toc,

  ###

  projectTopicDetail:(user,project,id)=>
    @debug "projectTopicDetail()"
    @coding.projectTopics.projectTopicDetail  user,project,id,params,(data) ->
      console.log data



  ###

   operationId  : projectTopicComments
   description  : 讨论评论列表
   args     	: user,project,id
   params 		: page,pageSize,type,page,pageSize,type,

  ###

  projectTopicComments:(user,project,id)=>
    @debug "projectTopicComments()"
    @coding.projectTopics.projectTopicComments  user,project,id,params,(data) ->
      console.log data



  ###

   operationId  : addTopicLabel
   description  : 讨论添加标签
   args     	: user,project,id,labelId
   params 		: 

  ###

  addTopicLabel:(user,project,id,labelId)=>
    @debug "addTopicLabel()"
    @coding.projectTopics.addTopicLabel  user,project,id,labelId,params,(data) ->
      console.log data



  ###

   operationId  : operateTopicLabels
   description  : 批量操作讨论标签
   args     	: user,project,id
   params 		: label_id,label_id,

  ###

  operateTopicLabels:(user,project,id)=>
    @debug "operateTopicLabels()"
    @coding.projectTopics.operateTopicLabels  user,project,id,params,(data) ->
      console.log data



  ###

   operationId  : watch_1
   description  : 关注讨论
   args     	: user,project,id
   params 		: 

  ###

  watch_1:(user,project,id)=>
    @debug "watch_1()"
    @coding.projectTopics.watch_1  user,project,id,params,(data) ->
      console.log data



  ###

   operationId  : getTopicWatchers
   description  : 获取关注该讨论的用户
   args     	: user,project,id
   params 		: page,pageSize,page,pageSize,

  ###

  getTopicWatchers:(user,project,id)=>
    @debug "getTopicWatchers()"
    @coding.projectTopics.getTopicWatchers  user,project,id,params,(data) ->
      console.log data




module.exports = (cmd) -> new Project_topics cmd
