BaseModel = require '../BaseModel'

class Trees extends BaseModel
  init:=>
    @debug "init()"

    @program.command "tree"
      .description "目录"
      .arguments('<user> <project> <tree>')
      .action @tree



  ###

   operationId  : tree
   description  : 目录
   args     	: user,project,tree
   params 		: 

  ###

  tree:(user,project,tree)=>
    @debug "tree()"
    @coding.trees.tree  user,project,tree,params,(data) ->
      console.log data




module.exports = (cmd) -> new Trees cmd
