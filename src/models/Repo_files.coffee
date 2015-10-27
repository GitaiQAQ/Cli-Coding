BaseModel = require '../BaseModel'

class Repo_files extends BaseModel
  init:=>
    @debug "init()"

    @program.command "delete_file"
      .description "删除文件"
      .arguments('<user> <project> <file>')
      .action @delete_file

    @program.command "edit_file"
      .description "更新文件"
      .arguments('<user> <project> <file>')
      .action @edit_file

    @program.command "create_file"
      .description "新建文件"
      .arguments('<user> <project> <file>')
      .action @create_file



  ###

   operationId  : delete_file
   description  : 删除文件
   args     	: user,project,file
   params 		: 

  ###

  delete_file:(user,project,file)=>
    @debug "delete_file()"
    @coding.repoFiles.delete_file  user,project,file,params,(data) ->
      console.log data



  ###

   operationId  : edit_file
   description  : 更新文件
   args     	: user,project,file
   params 		: 

  ###

  edit_file:(user,project,file)=>
    @debug "edit_file()"
    @coding.repoFiles.edit_file  user,project,file,params,(data) ->
      console.log data



  ###

   operationId  : create_file
   description  : 新建文件
   args     	: user,project,file
   params 		:

  ###

  create_file:(user,project,file)=>
    @debug "create_file()"
    @coding.repoFiles.create_file  user,project,file,params,(data) ->
      console.log data




module.exports = (cmd) -> new Repo_files cmd
