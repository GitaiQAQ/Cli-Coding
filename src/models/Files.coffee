BaseModel = require '../BaseModel'

class Files extends BaseModel
  init:=>
    @debug "init()"

    @program.command "checkExisted"
      .description "检查目录下是否有同名的文件"
      .arguments('<user> <project> <dir>')
      .action @checkExisted

    @program.command "uploadFileHistory"
      .description "上传文件新版本"
      .arguments('<user> <project>')
      .action @uploadFileHistory

    @program.command "deleteFiles"
      .description "删除文件"
      .arguments('<user> <project>')
      .action @deleteFiles

    @program.command "deleteFileHistory"
      .description "删除文件历史"
      .arguments('<user> <project> <id>')
      .action @deleteFileHistory

    @program.command "downloadHistory"
      .description "下载历史文件版本"
      .arguments('<user> <project> <id>')
      .action @downloadHistory

    @program.command "uploadFile"
      .description "上传私有项目的图片"
      .arguments('<user> <project>')
      .action @uploadFile

    @program.command "downloadFile"
      .description "文件下载"
      .arguments('<user> <project> <fileId>')
      .action @downloadFile

    @program.command "downloadURL"
      .description "文件下载URL"
      .arguments('<user> <project> <fileId>')
      .action @downloadURL

    @program.command "editFile"
      .description "编辑文件"
      .arguments('<user> <project> <fileId>')
      .action @editFile

    @program.command "viewFile"
      .description "查看文件"
      .arguments('<user> <project> <fileId>')
      .action @viewFile

    @program.command "imagePreview"
      .description "图片预览"
      .arguments('<user> <project> <fileId>')
      .action @imagePreview

    @program.command "updateFileHistoryRemark"
      .description "修改历史版本备注"
      .arguments('<user> <project> <file_id> <history_id>')
      .action @updateFileHistoryRemark

    @program.command "createFile"
      .description "创建文件"
      .arguments('<user> <project> <folderId>')
      .action @createFile

    @program.command "listFileHistory"
      .description "文件历史"
      .arguments('<user> <project> <id>')
      .action @listFileHistory

    @program.command "mkdir"
      .description "创建文件夹"
      .arguments('<user> <project>')
      .action @mkdir

    @program.command "move"
      .description "移动文件"
      .arguments('<user> <project> <dirId>')
      .action @move

    @program.command "renameFolder"
      .description "重命名文件夹"
      .arguments('<user> <project> <dir>')
      .action @renameFolder

    @program.command "listFile"
      .description "列出某目录下的文件"
      .arguments('<user> <project> <dir>')
      .action @listFile

    @program.command "listFolder"
      .description "列出所有一级目录"
      .arguments('<user> <project>')
      .action @listFolder

    @program.command "listAllFolder"
      .description "列出所有目录"
      .arguments('<user> <project>')
      .action @listAllFolder

    @program.command "allFolderFileCount"
      .description "获取文件夹的文件数"
      .arguments('<user> <project>')
      .action @allFolderFileCount



  ###

   operationId  : checkExisted
   description  : 检查目录下是否有同名的文件
   args     	: user,project,dir
   params 		: 

  ###

  checkExisted:(user,project,dir)=>
    @debug "checkExisted()"
    @coding.files.checkExisted  user,project,dir,params,(data) ->
      console.log data



  ###

   operationId  : uploadFileHistory
   description  : 上传文件新版本
   args     	: user,project
   params 		: 

  ###

  uploadFileHistory:(user,project)=>
    @debug "uploadFileHistory()"
    @coding.files.uploadFileHistory  user,project,params,(data) ->
      console.log data



  ###

   operationId  : deleteFiles
   description  : 删除文件
   args     	: user,project
   params 		: 

  ###

  deleteFiles:(user,project)=>
    @debug "deleteFiles()"
    @coding.files.deleteFiles  user,project,params,(data) ->
      console.log data



  ###

   operationId  : deleteFileHistory
   description  : 删除文件历史
   args     	: user,project,id
   params 		: 

  ###

  deleteFileHistory:(user,project,id)=>
    @debug "deleteFileHistory()"
    @coding.files.deleteFileHistory  user,project,id,params,(data) ->
      console.log data



  ###

   operationId  : downloadHistory
   description  : 下载历史文件版本
   args     	: user,project,id
   params 		: 

  ###

  downloadHistory:(user,project,id)=>
    @debug "downloadHistory()"
    @coding.files.downloadHistory  user,project,id,params,(data) ->
      console.log data



  ###

   operationId  : uploadFile
   description  : 上传私有项目的图片
   args     	: user,project
   params 		: 

  ###

  uploadFile:(user,project)=>
    @debug "uploadFile()"
    @coding.files.uploadFile  user,project,params,(data) ->
      console.log data



  ###

   operationId  : downloadFile
   description  : 文件下载
   args     	: user,project,fileId
   params 		: 

  ###

  downloadFile:(user,project,fileId)=>
    @debug "downloadFile()"
    @coding.files.downloadFile  user,project,fileId,params,(data) ->
      console.log data



  ###

   operationId  : downloadURL
   description  : 文件下载URL
   args     	: user,project,fileId
   params 		: 

  ###

  downloadURL:(user,project,fileId)=>
    @debug "downloadURL()"
    @coding.files.downloadURL  user,project,fileId,params,(data) ->
      console.log data



  ###

   operationId  : editFile
   description  : 编辑文件
   args     	: user,project,fileId
   params 		: name,content,fileId,name,content,fileId,

  ###

  editFile:(user,project,fileId)=>
    @debug "editFile()"
    @coding.files.editFile  user,project,fileId,params,(data) ->
      console.log data



  ###

   operationId  : viewFile
   description  : 查看文件
   args     	: user,project,fileId
   params 		: type,width,height,flag,type,width,height,flag,

  ###

  viewFile:(user,project,fileId)=>
    @debug "viewFile()"
    @coding.files.viewFile  user,project,fileId,params,(data) ->
      console.log data



  ###

   operationId  : imagePreview
   description  : 图片预览
   args     	: user,project,fileId
   params 		: type,width,height,type,width,height,

  ###

  imagePreview:(user,project,fileId)=>
    @debug "imagePreview()"
    @coding.files.imagePreview  user,project,fileId,params,(data) ->
      console.log data



  ###

   operationId  : updateFileHistoryRemark
   description  : 修改历史版本备注
   args     	: user,project,file_id,history_id
   params 		: remark,remark,

  ###

  updateFileHistoryRemark:(user,project,file_id,history_id)=>
    @debug "updateFileHistoryRemark()"
    @coding.files.updateFileHistoryRemark  user,project,file_id,history_id,params,(data) ->
      console.log data



  ###

   operationId  : createFile
   description  : 创建文件
   args     	: user,project,folderId
   params 		: projectFile.deleted_at,projectFile.projects_id,projectFile.files_id,projectFile.comments,projectFile.id,folder.owner_id,folder.parent_id,folder.created_at,folder.updated_at,folder.type,folder.size,folder.name,folder.storage_type,folder.storage_key,folder.history_id,folder.id,name,content,folderId,projectFile.deleted_at,projectFile.projects_id,projectFile.files_id,projectFile.comments,projectFile.id,folder.owner_id,folder.parent_id,folder.created_at,folder.updated_at,folder.type,folder.size,folder.name,folder.storage_type,folder.storage_key,folder.history_id,folder.id,name,content,folderId,

  ###

  createFile:(user,project,folderId)=>
    @debug "createFile()"
    @coding.files.createFile  user,project,folderId,params,(data) ->
      console.log data



  ###

   operationId  : listFileHistory
   description  : 文件历史
   args     	: user,project,id
   params 		: type,width,height,type,width,height,

  ###

  listFileHistory:(user,project,id)=>
    @debug "listFileHistory()"
    @coding.files.listFileHistory  user,project,id,params,(data) ->
      console.log data



  ###

   operationId  : mkdir
   description  : 创建文件夹
   args     	: user,project
   params 		: name,parentId,name,parentId,

  ###

  mkdir:(user,project)=>
    @debug "mkdir()"
    @coding.files.mkdir  user,project,params,(data) ->
      console.log data



  ###

   operationId  : move
   description  : 移动文件
   args     	: user,project,dirId
   params 		: fileId,fileId,

  ###

  move:(user,project,dirId)=>
    @debug "move()"
    @coding.files.move  user,project,dirId,params,(data) ->
      console.log data



  ###

   operationId  : renameFolder
   description  : 重命名文件夹
   args     	: user,project,dir
   params 		: name,name,

  ###

  renameFolder:(user,project,dir)=>
    @debug "renameFolder()"
    @coding.files.renameFolder  user,project,dir,params,(data) ->
      console.log data



  ###

   operationId  : listFile
   description  : 列出某目录下的文件
   args     	: user,project,dir
   params 		: type,width,height,page,pageSize,type,width,height,page,pageSize,

  ###

  listFile:(user,project,dir)=>
    @debug "listFile()"
    @coding.files.listFile  user,project,dir,params,(data) ->
      console.log data



  ###

   operationId  : listFolder
   description  : 列出所有一级目录
   args     	: user,project
   params 		: page,pageSize,page,pageSize,

  ###

  listFolder:(user,project)=>
    @debug "listFolder()"
    @coding.files.listFolder  user,project,params,(data) ->
      console.log data



  ###

   operationId  : listAllFolder
   description  : 列出所有目录
   args     	: user,project
   params 		: page,pageSize,page,pageSize,

  ###

  listAllFolder:(user,project)=>
    @debug "listAllFolder()"
    @coding.files.listAllFolder  user,project,params,(data) ->
      console.log data



  ###

   operationId  : allFolderFileCount
   description  : 获取文件夹的文件数
   args     	: user,project
   params 		: 

  ###

  allFolderFileCount:(user,project)=>
    @debug "allFolderFileCount()"
    @coding.files.allFolderFileCount  user,project,params,(data) ->
      console.log data




module.exports = (cmd) -> new Files cmd
