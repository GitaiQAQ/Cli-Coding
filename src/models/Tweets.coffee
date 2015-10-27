BaseModel = require '../BaseModel'

class Tweets extends BaseModel
  init:=>
    @debug "init()"

    @program.command "create_1"
      .description "发送冒泡"
      .action @create_1

    @program.command "bestUser"
      .description "热门用户"
      .action @bestUser

    @program.command "query_a_comment"
      .description "获取某个评论"
      .arguments('<id>')
      .action @query_a_comment

    @program.command "insert_image"
      .description "冒泡插入图片"
      .action @insert_image

    @program.command "lastTweet"
      .description "查询last_id以后的最新冒泡"
      .action @lastTweet

    @program.command "public_tweets"
      .description "冒泡列表"
      .action @public_tweets

    @program.command "user_public"
      .description "用户冒泡列表"
      .action @user_public

    @program.command "detail"
      .description "获取冒泡详情"
      .arguments('<global_key> <tweet_id>')
      .action @detail

    @program.command "comment"
      .description "冒泡评论"
      .arguments('<id>')
      .action @comment

    @program.command "delete_comment"
      .description "删除冒泡评论"
      .arguments('<id> <comment_id>')
      .action @delete_comment

    @program.command "query_comment"
      .description "获取冒泡评论列表"
      .arguments('<id>')
      .action @query_comment

    @program.command "deleteTweet"
      .description "删除冒泡"
      .arguments('<tweet_id>')
      .action @deleteTweet

    @program.command "like_tweet"
      .description "冒泡点赞"
      .arguments('<tweet_id>')
      .action @like_tweet

    @program.command "getTweetLike"
      .description "赞过的冒泡列表"
      .arguments('<tweet_id>')
      .action @getTweetLike

    @program.command "unlike_tweet"
      .description "冒泡取消点赞"
      .arguments('<tweet_id>')
      .action @unlike_tweet

    @program.command "public_tweets"
      .description "冒泡广场列表"
      .action @public_tweets



  ###

   operationId  : create_1
   description  : 发送冒泡
   args     	: 
   params 		: device,location,coord,address,content,device,location,coord,address,content,

  ###

  create_1:()=>
    @debug "create_1()"
    @coding.tweets.create_1 params,(data) ->
      console.log data



  ###

   operationId  : bestUser
   description  : 热门用户
   args     	: 
   params 		: 

  ###

  bestUser:()=>
    @debug "bestUser()"
    @coding.tweets.bestUser params,(data) ->
      console.log data



  ###

   operationId  : query_a_comment
   description  : 获取某个评论
   args     	: id
   params 		: 

  ###

  query_a_comment:(id)=>
    @debug "query_a_comment()"
    @coding.tweets.query_a_comment  id,params,(data) ->
      console.log data



  ###

   operationId  : insert_image
   description  : 冒泡插入图片
   args     	: 
   params 		: 

  ###

  insert_image:()=>
    @debug "insert_image()"
    @coding.tweets.insert_image params,(data) ->
      console.log data



  ###

   operationId  : lastTweet
   description  : 查询last_id以后的最新冒泡
   args     	: 
   params 		: default_like_count,last_id,default_like_count,last_id,

  ###

  lastTweet:()=>
    @debug "lastTweet()"
    @coding.tweets.lastTweet params,(data) ->
      console.log data



  ###

   operationId  : public_tweets
   description  : 冒泡列表
   args     	: 
   params 		: sort,last_id,default_like_count,filter,sort,last_id,default_like_count,filter,

  ###

  public_tweets:()=>
    @debug "public_tweets()"
    @coding.tweets.public_tweets params,(data) ->
      console.log data



  ###

   operationId  : user_public
   description  : 用户冒泡列表
   args     	: 
   params 		: last_id,user_id,global_key,type,default_like_count,last_id,user_id,global_key,type,default_like_count,

  ###

  user_public:()=>
    @debug "user_public()"
    @coding.tweets.user_public params,(data) ->
      console.log data



  ###

   operationId  : detail
   description  : 获取冒泡详情
   args     	: global_key,tweet_id
   params 		: default_like_count,default_like_count,

  ###

  detail:(global_key,tweet_id)=>
    @debug "detail()"
    @coding.tweets.detail  global_key,tweet_id,params,(data) ->
      console.log data



  ###

   operationId  : comment
   description  : 冒泡评论
   args     	: id
   params 		: content,afterFilter,content,afterFilter,

  ###

  comment:(id)=>
    @debug "comment()"
    @coding.tweets.comment  id,params,(data) ->
      console.log data



  ###

   operationId  : delete_comment
   description  : 删除冒泡评论
   args     	: id,comment_id
   params 		: 

  ###

  delete_comment:(id,comment_id)=>
    @debug "delete_comment()"
    @coding.tweets.delete_comment  id,comment_id,params,(data) ->
      console.log data



  ###

   operationId  : query_comment
   description  : 获取冒泡评论列表
   args     	: id
   params 		: page,pageSize,page,pageSize,

  ###

  query_comment:(id)=>
    @debug "query_comment()"
    @coding.tweets.query_comment  id,params,(data) ->
      console.log data



  ###

   operationId  : deleteTweet
   description  : 删除冒泡
   args     	: tweet_id
   params 		: 

  ###

  deleteTweet:(tweet_id)=>
    @debug "deleteTweet()"
    @coding.tweets.deleteTweet  tweet_id,params,(data) ->
      console.log data



  ###

   operationId  : like_tweet
   description  : 冒泡点赞
   args     	: tweet_id
   params 		: 

  ###

  like_tweet:(tweet_id)=>
    @debug "like_tweet()"
    @coding.tweets.like_tweet  tweet_id,params,(data) ->
      console.log data



  ###

   operationId  : getTweetLike
   description  : 赞过的冒泡列表
   args     	: tweet_id
   params 		: page,pageSize,page,pageSize,

  ###

  getTweetLike:(tweet_id)=>
    @debug "getTweetLike()"
    @coding.tweets.getTweetLike  tweet_id,params,(data) ->
      console.log data



  ###

   operationId  : unlike_tweet
   description  : 冒泡取消点赞
   args     	: tweet_id
   params 		: 

  ###

  unlike_tweet:(tweet_id)=>
    @debug "unlike_tweet()"
    @coding.tweets.unlike_tweet  tweet_id,params,(data) ->
      console.log data



  ###

   operationId  : public_tweets
   description  : 冒泡广场列表
   args     	: 
   params 		: sort,last_id,default_like_count,filter,sort,last_id,default_like_count,filter,

  ###

  public_tweets:()=>
    @debug "public_tweets()"
    @coding.tweets.public_tweets params,(data) ->
      console.log data




module.exports = (cmd) -> new Tweets cmd
