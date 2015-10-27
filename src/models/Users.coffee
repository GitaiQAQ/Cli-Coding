BaseModel = require '../BaseModel'

class Users extends BaseModel
  init:=>
    @debug "init()"

    @program.command "doActivate"
      .description "账户激活"
      .action @doActivate

    @program.command "generateActivatePhoneCode"
      .description "获取激活账号的手机验证码"
      .action @generateActivatePhoneCode

    @program.command "activatePhone"
      .description "激活用手机注册的用户"
      .action @activatePhone

    @program.command "getAvatar"
      .description "获取头像"
      .action @getAvatar

    @program.command "captcha"
      .description "检查是否需要验证码"
      .arguments('<action>')
      .action @captcha

    @program.command "changeNotificationSetting"
      .description "修改通知设置"
      .action @changeNotificationSetting

    @program.command "check"
      .description "检查email是否没有被注册过"
      .action @check

    @program.command "checkPhone"
      .description "检查手机是否没有被注册过"
      .action @checkPhone

    @program.command "checkTwoFactorAuthCode"
      .description "登录时的两步验证"
      .action @checkTwoFactorAuthCode

    @program.command "currentUser"
      .description "获取当前登录用户信息"
      .action @currentUser

    @program.command "userEmail"
      .description "获取当前用户的email"
      .action @userEmail

    @program.command "getNotificationSettings"
      .description "获取通知设置"
      .action @getNotificationSettings

    @program.command "getGravatar"
      .description "获取Gravatar头像"
      .action @getGravatar

    @program.command "getUserByGlobalKey"
      .description "通过个性后缀获取用户信息"
      .arguments('<global_key>')
      .action @getUserByGlobalKey

    @program.command "doLogin"
      .description "登录"
      .action @doLogin

    @program.command "generateLoginPhoneCode"
      .description "获取登录的手机验证码"
      .action @generateLoginPhoneCode

    @program.command "doPhoneLogin"
      .description "使用绑定过的手机号码登录"
      .action @doPhoneLogin

    @program.command "doLogout"
      .description "注销登录"
      .action @doLogout

    @program.command "getUserByName"
      .description "通过昵称获取用户信息"
      .arguments('<name>')
      .action @getUserByName

    @program.command "doRegister"
      .description "注册"
      .action @doRegister

    @program.command "generateRegisterPhoneCode"
      .description "获取注册的手机验证码"
      .action @generateRegisterPhoneCode

    @program.command "doPhoneRegister"
      .description "使用手机注册"
      .action @doPhoneRegister

    @program.command "updateInfo"
      .description "更新用户信息"
      .action @updateInfo

    @program.command "updatePassword"
      .description "修改用户密码"
      .action @updatePassword

    @program.command "updateAvatar"
      .description "更新头像"
      .action @updateAvatar

    @program.command "follow"
      .description "关注用户"
      .action @follow

    @program.command "followers_1"
      .description "关注我的用户"
      .action @followers_1

    @program.command "followers"
      .description "获取关注默认的用户"
      .arguments('<global_key>')
      .action @followers

    @program.command "friends_1"
      .description "我关注的用户列表"
      .action @friends_1

    @program.command "friends"
      .description "指定用户的关注列表"
      .arguments('<global_key>')
      .action @friends

    @program.command "relationship"
      .description "是否关注了该用户"
      .arguments('<global_key>')
      .action @relationship

    @program.command "getRelationship"
      .description "获取我关注和关注我的用户列表"
      .action @getRelationship

    @program.command "getRelationshipWithProjectMember"
      .description "获取我关注和关注我的用户列表包含成员列表"
      .action @getRelationshipWithProjectMember

    @program.command "search"
      .description "搜索用户"
      .action @search

    @program.command "unfollow"
      .description "取消关注"
      .action @unfollow

    @program.command "unreadCount"
      .description "未读消息通知"
      .action @unreadCount



  ###

   operationId  : doActivate
   description  : 账户激活
   args     	: 
   params 		: email,key,password,confirm_password,email,key,password,confirm_password,

  ###

  doActivate:()=>
    @debug "doActivate()"
    @coding.users.doActivate params,(data) ->
      console.log data



  ###

   operationId  : generateActivatePhoneCode
   description  : 获取激活账号的手机验证码
   args     	: 
   params 		: phone,phone,

  ###

  generateActivatePhoneCode:()=>
    @debug "generateActivatePhoneCode()"
    @coding.users.generateActivatePhoneCode params,(data) ->
      console.log data



  ###

   operationId  : activatePhone
   description  : 激活用手机注册的用户
   args     	: 
   params 		: phone,code,global_key,email,password,phone,code,global_key,email,password,

  ###

  activatePhone:()=>
    @debug "activatePhone()"
    @coding.users.activatePhone params,(data) ->
      console.log data



  ###

   operationId  : getAvatar
   description  : 获取头像
   args     	: 
   params 		: 

  ###

  getAvatar:()=>
    @debug "getAvatar()"
    @coding.users.getAvatar params,(data) ->
      console.log data



  ###

   operationId  : captcha
   description  : 检查是否需要验证码
   args     	: action
   params 		: 

  ###

  captcha:(action)=>
    @debug "captcha()"
    @coding.users.captcha  action,params,(data) ->
      console.log data



  ###

   operationId  : changeNotificationSetting
   description  : 修改通知设置
   args     	: 
   params 		: settingType,settingContent,settingType,settingContent,

  ###

  changeNotificationSetting:()=>
    @debug "changeNotificationSetting()"
    @coding.users.changeNotificationSetting params,(data) ->
      console.log data



  ###

   operationId  : check
   description  : 检查email是否没有被注册过
   args     	: 
   params 		: key,key,

  ###

  check:()=>
    @debug "check()"
    @coding.users.check params,(data) ->
      console.log data



  ###

   operationId  : checkPhone
   description  : 检查手机是否没有被注册过
   args     	: 
   params 		: phone,phone,

  ###

  checkPhone:()=>
    @debug "checkPhone()"
    @coding.users.checkPhone params,(data) ->
      console.log data



  ###

   operationId  : checkTwoFactorAuthCode
   description  : 登录时的两步验证
   args     	: 
   params 		: code,code,

  ###

  checkTwoFactorAuthCode:()=>
    @debug "checkTwoFactorAuthCode()"
    @coding.users.checkTwoFactorAuthCode params,(data) ->
      console.log data



  ###

   operationId  : currentUser
   description  : 获取当前登录用户信息
   args     	: 
   params 		: 

  ###

  currentUser:()=>
    @debug "currentUser()"
    @coding.users.currentUser params,(data) ->
      console.log data



  ###

   operationId  : userEmail
   description  : 获取当前用户的email
   args     	: 
   params 		: 

  ###

  userEmail:()=>
    @debug "userEmail()"
    @coding.users.userEmail params,(data) ->
      console.log data



  ###

   operationId  : getNotificationSettings
   description  : 获取通知设置
   args     	: 
   params 		: 

  ###

  getNotificationSettings:()=>
    @debug "getNotificationSettings()"
    @coding.users.getNotificationSettings params,(data) ->
      console.log data



  ###

   operationId  : getGravatar
   description  : 获取Gravatar头像
   args     	: 
   params 		: 

  ###

  getGravatar:()=>
    @debug "getGravatar()"
    @coding.users.getGravatar params,(data) ->
      console.log data



  ###

   operationId  : getUserByGlobalKey
   description  : 通过个性后缀获取用户信息
   args     	: global_key
   params 		: 

  ###

  getUserByGlobalKey:(global_key)=>
    @debug "getUserByGlobalKey()"
    @coding.users.getUserByGlobalKey  global_key,params,(data) ->
      console.log data



  ###

   operationId  : doLogin
   description  : 登录
   args     	: 
   params 		: email,password,j_captcha,remember_me,email,password,j_captcha,remember_me,

  ###

  doLogin:()=>
    @debug "doLogin()"
    @coding.users.doLogin params,(data) ->
      console.log data



  ###

   operationId  : generateLoginPhoneCode
   description  : 获取登录的手机验证码
   args     	: 
   params 		: phone,phone,

  ###

  generateLoginPhoneCode:()=>
    @debug "generateLoginPhoneCode()"
    @coding.users.generateLoginPhoneCode params,(data) ->
      console.log data



  ###

   operationId  : doPhoneLogin
   description  : 使用绑定过的手机号码登录
   args     	: 
   params 		: phone,code,j_captcha,remember_me,phone,code,j_captcha,remember_me,

  ###

  doPhoneLogin:()=>
    @debug "doPhoneLogin()"
    @coding.users.doPhoneLogin params,(data) ->
      console.log data



  ###

   operationId  : doLogout
   description  : 注销登录
   args     	: 
   params 		: 

  ###

  doLogout:()=>
    @debug "doLogout()"
    @coding.users.doLogout params,(data) ->
      console.log data



  ###

   operationId  : getUserByName
   description  : 通过昵称获取用户信息
   args     	: name
   params 		: 

  ###

  getUserByName:(name)=>
    @debug "getUserByName()"
    @coding.users.getUserByName  name,params,(data) ->
      console.log data



  ###

   operationId  : doRegister
   description  : 注册
   args     	: 
   params 		: email,global_key,j_captcha,email,global_key,j_captcha,

  ###

  doRegister:()=>
    @debug "doRegister()"
    @coding.users.doRegister params,(data) ->
      console.log data



  ###

   operationId  : generateRegisterPhoneCode
   description  : 获取注册的手机验证码
   args     	: 
   params 		: phone,phone,

  ###

  generateRegisterPhoneCode:()=>
    @debug "generateRegisterPhoneCode()"
    @coding.users.generateRegisterPhoneCode params,(data) ->
      console.log data



  ###

   operationId  : doPhoneRegister
   description  : 使用手机注册
   args     	: 
   params 		: phone,code,phone,code,

  ###

  doPhoneRegister:()=>
    @debug "doPhoneRegister()"
    @coding.users.doPhoneRegister params,(data) ->
      console.log data



  ###

   operationId  : updateInfo
   description  : 更新用户信息
   args     	: 
   params 		: tags,name,sex,phone,birthday,location,company,slogan,introduction,job,code,tags,name,sex,phone,birthday,location,company,slogan,introduction,job,code,

  ###

  updateInfo:()=>
    @debug "updateInfo()"
    @coding.users.updateInfo params,(data) ->
      console.log data



  ###

   operationId  : updatePassword
   description  : 修改用户密码
   args     	: 
   params 		: current_password,password,confirm_password,current_password,password,confirm_password,

  ###

  updatePassword:()=>
    @debug "updatePassword()"
    @coding.users.updatePassword params,(data) ->
      console.log data



  ###

   operationId  : updateAvatar
   description  : 更新头像
   args     	: 
   params 		: avatar,avatar,

  ###

  updateAvatar:()=>
    @debug "updateAvatar()"
    @coding.users.updateAvatar params,(data) ->
      console.log data



  ###

   operationId  : follow
   description  : 关注用户
   args     	: 
   params 		: users,users,

  ###

  follow:()=>
    @debug "follow()"
    @coding.users.follow params,(data) ->
      console.log data



  ###

   operationId  : followers_1
   description  : 关注我的用户
   args     	: 
   params 		: page,pageSize,page,pageSize,

  ###

  followers_1:()=>
    @debug "followers_1()"
    @coding.users.followers_1 params,(data) ->
      console.log data



  ###

   operationId  : followers
   description  : 获取关注默认的用户
   args     	: global_key
   params 		: page,pageSize,page,pageSize,

  ###

  followers:(global_key)=>
    @debug "followers()"
    @coding.users.followers  global_key,params,(data) ->
      console.log data



  ###

   operationId  : friends_1
   description  : 我关注的用户列表
   args     	: 
   params 		: page,pageSize,page,pageSize,

  ###

  friends_1:()=>
    @debug "friends_1()"
    @coding.users.friends_1 params,(data) ->
      console.log data



  ###

   operationId  : friends
   description  : 指定用户的关注列表
   args     	: global_key
   params 		: page,pageSize,page,pageSize,

  ###

  friends:(global_key)=>
    @debug "friends()"
    @coding.users.friends  global_key,params,(data) ->
      console.log data



  ###

   operationId  : relationship
   description  : 是否关注了该用户
   args     	: global_key
   params 		: 

  ###

  relationship:(global_key)=>
    @debug "relationship()"
    @coding.users.relationship  global_key,params,(data) ->
      console.log data



  ###

   operationId  : getRelationship
   description  : 获取我关注和关注我的用户列表
   args     	: 
   params 		: 

  ###

  getRelationship:()=>
    @debug "getRelationship()"
    @coding.users.getRelationship params,(data) ->
      console.log data



  ###

   operationId  : getRelationshipWithProjectMember
   description  : 获取我关注和关注我的用户列表包含成员列表
   args     	: 
   params 		: project_id,project_id,

  ###

  getRelationshipWithProjectMember:()=>
    @debug "getRelationshipWithProjectMember()"
    @coding.users.getRelationshipWithProjectMember params,(data) ->
      console.log data



  ###

   operationId  : search
   description  : 搜索用户
   args     	: 
   params 		: key,page,pageSize,key,page,pageSize,

  ###

  search:()=>
    @debug "search()"
    @coding.users.search params,(data) ->
      console.log data



  ###

   operationId  : unfollow
   description  : 取消关注
   args     	: 
   params 		: users,users,

  ###

  unfollow:()=>
    @debug "unfollow()"
    @coding.users.unfollow params,(data) ->
      console.log data



  ###

   operationId  : unreadCount
   description  : 未读消息通知
   args     	: 
   params 		: 

  ###

  unreadCount:()=>
    @debug "unreadCount()"
    @coding.users.unreadCount params,(data) ->
      console.log data




module.exports = (cmd) -> new Users cmd
