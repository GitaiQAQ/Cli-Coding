BaseModel = require '../BaseModel'

class Projects extends BaseModel
  init:=>
    @debug "init()"

    @program.command "getPinProjects"
      .description "获取常用项目列表"
      .action @getPinProjects

    @program.command "update_1"
      .description "更新项目信息"
      .action @update_1

    @program.command "recommendedList"
      .description "推荐项目list"
      .action @recommendedList

    @program.command "publicProject"
      .description "公有项目列表"
      .action @publicProject

    @program.command "queryByName"
      .description "通过名称查询"
      .arguments('<user> <project>')
      .action @queryByName

    @program.command "setProjectIcon"
      .description "设置项目图标"
      .arguments('<user> <project>')
      .action @setProjectIcon

    @program.command "star"
      .description "收藏项目"
      .arguments('<user> <project>')
      .action @star

    @program.command "stared"
      .description "项目是否被收藏"
      .arguments('<user> <project>')
      .action @stared

    @program.command "unstar"
      .description "项目取消收藏"
      .arguments('<user> <project>')
      .action @unstar

    @program.command "unwatch"
      .description "项目取消关注"
      .arguments('<user> <project>')
      .action @unwatch

    @program.command "visitProject"
      .description "更新项目阅读时间"
      .arguments('<user> <project>')
      .action @visitProject

    @program.command "watch"
      .description "关注项目"
      .arguments('<user> <project>')
      .action @watch

    @program.command "watched"
      .description "项目是否被关注"
      .arguments('<user> <project>')
      .action @watched

    @program.command "watchers"
      .description "项目关注者"
      .arguments('<user> <project>')
      .action @watchers

    @program.command "project_list"
      .description "我的项目列表"
      .action @project_list

    @program.command "private_projects"
      .description "私有项目列表"
      .action @private_projects

    @program.command "createProject"
      .description "创建项目"
      .arguments('<global_key>')
      .action @createProject

    @program.command "public_projects"
      .description "公有项目列表"
      .arguments('<global_key>')
      .action @public_projects



  ###

   operationId  : getPinProjects
   description  : 获取常用项目列表
   args     	: 
   params 		: page,pageSize,page,pageSize,

  ###

  getPinProjects:()=>
    @debug "getPinProjects()"
    @coding.projects.getPinProjects params,(data) ->
      console.log data



  ###

   operationId  : update_1
   description  : 更新项目信息
   args     	: 
   params 		: id,name,description,id,name,description,

  ###

  update_1:()=>
    @debug "update_1()"
    @coding.projects.update_1 params,(data) ->
      console.log data



  ###

   operationId  : recommendedList
   description  : 推荐项目list
   args     	: 
   params 		: 

  ###

  recommendedList:()=>
    @debug "recommendedList()"
    @coding.projects.recommendedList params,(data) ->
      console.log data



  ###

   operationId  : publicProject
   description  : 公有项目列表
   args     	: 
   params 		: page,pageSize,page,pageSize,

  ###

  publicProject:()=>
    @debug "publicProject()"
    @coding.projects.publicProject params,(data) ->
      console.log data



  ###

   operationId  : queryByName
   description  : 通过名称查询
   args     	: user,project
   params 		: 

  ###

  queryByName:(user,project)=>
    @debug "queryByName()"
    @coding.projects.queryByName  user,project,params,(data) ->
      console.log data



  ###

   operationId  : setProjectIcon
   description  : 设置项目图标
   args     	: user,project
   params 		: 

  ###

  setProjectIcon:(user,project)=>
    @debug "setProjectIcon()"
    @coding.projects.setProjectIcon  user,project,params,(data) ->
      console.log data



  ###

   operationId  : star
   description  : 收藏项目
   args     	: user,project
   params 		: 

  ###

  star:(user,project)=>
    @debug "star()"
    @coding.projects.star  user,project,params,(data) ->
      console.log data



  ###

   operationId  : stared
   description  : 项目是否被收藏
   args     	: user,project
   params 		: 

  ###

  stared:(user,project)=>
    @debug "stared()"
    @coding.projects.stared  user,project,params,(data) ->
      console.log data



  ###

   operationId  : unstar
   description  : 项目取消收藏
   args     	: user,project
   params 		: 

  ###

  unstar:(user,project)=>
    @debug "unstar()"
    @coding.projects.unstar  user,project,params,(data) ->
      console.log data



  ###

   operationId  : unwatch
   description  : 项目取消关注
   args     	: user,project
   params 		: 

  ###

  unwatch:(user,project)=>
    @debug "unwatch()"
    @coding.projects.unwatch  user,project,params,(data) ->
      console.log data



  ###

   operationId  : visitProject
   description  : 更新项目阅读时间
   args     	: user,project
   params 		: 

  ###

  visitProject:(user,project)=>
    @debug "visitProject()"
    @coding.projects.visitProject  user,project,params,(data) ->
      console.log data



  ###

   operationId  : watch
   description  : 关注项目
   args     	: user,project
   params 		: 

  ###

  watch:(user,project)=>
    @debug "watch()"
    @coding.projects.watch  user,project,params,(data) ->
      console.log data



  ###

   operationId  : watched
   description  : 项目是否被关注
   args     	: user,project
   params 		: 

  ###

  watched:(user,project)=>
    @debug "watched()"
    @coding.projects.watched  user,project,params,(data) ->
      console.log data



  ###

   operationId  : watchers
   description  : 项目关注者
   args     	: user,project
   params 		: 

  ###

  watchers:(user,project)=>
    @debug "watchers()"
    @coding.projects.watchers  user,project,params,(data) ->
      console.log data



  ###

   operationId  : project_list
   description  : 我的项目列表
   args     	: 
   params 		: type,sort,page,pageSize,type,sort,page,pageSize,

  ###

  project_list:()=>
    @debug "project_list()"
    @coding.projects.project_list params,(data) ->
      console.log data



  ###

   operationId  : private_projects
   description  : 私有项目列表
   args     	: 
   params 		: type,page,pageSize,type,page,pageSize,

  ###

  private_projects:()=>
    @debug "private_projects()"
    @coding.projects.private_projects params,(data) ->
      console.log data



  ###

   operationId  : createProject
   description  : 创建项目
   args     	: global_key
   params 		: 

  ###

  createProject:(global_key)=>
    @debug "createProject()"
    @coding.projects.createProject  global_key,params,(data) ->
      console.log data



  ###

   operationId  : public_projects
   description  : 公有项目列表
   args     	: global_key
   params 		: type,page,pageSize,type,page,pageSize,

  ###

  public_projects:(global_key)=>
    @debug "public_projects()"
    @coding.projects.public_projects  global_key,params,(data) ->
      console.log data




module.exports = (cmd) -> new Projects cmd
