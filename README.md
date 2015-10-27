# Cli-Coding

![MIT](https://img.shields.io/dub/l/vibe-d.svg)

A simple command-line tool for coding.net by nodejs

## Start

```
debian:~/Coding-Cli$ ./coding --help

  Usage: coding [options]


  Commands:

    login
    logout|clear
    doActivate                                                       账户激活
    generateActivatePhoneCode                                        获取激活账号的手机验证码
    activatePhone                                                    激活用手机注册的用户
    getAvatar                                                        获取头像
    captcha <action>                                                 检查是否需要验证码
    changeNotificationSetting                                        修改通知设置
    check                                                            检查email是否没有被注册过
    checkPhone                                                       检查手机是否没有被注册过
    checkTwoFactorAuthCode                                           登录时的两步验证
    currentUser                                                      获取当前登录用户信息
    userEmail                                                        获取当前用户的email
    getNotificationSettings                                          获取通知设置
    getGravatar                                                      获取Gravatar头像
    getUserByGlobalKey <global_key>                                  通过个性后缀获取用户信息
    doLogin                                                          登录
    generateLoginPhoneCode                                           获取登录的手机验证码
    doPhoneLogin                                                     使用绑定过的手机号码登录
    doLogout                                                         注销登录
    getUserByName <name>                                             通过昵称获取用户信息
    doRegister                                                       注册
    generateRegisterPhoneCode                                        获取注册的手机验证码
    doPhoneRegister                                                  使用手机注册
    updateInfo                                                       更新用户信息
    updatePassword                                                   修改用户密码
    updateAvatar                                                     更新头像
    follow                                                           关注用户
    followers_1                                                      关注我的用户
    followers <global_key>                                           获取关注默认的用户
    friends_1                                                        我关注的用户列表
    friends <global_key>                                             指定用户的关注列表
    relationship <global_key>                                        是否关注了该用户
    getRelationship                                                  获取我关注和关注我的用户列表
    getRelationshipWithProjectMember                                 获取我关注和关注我的用户列表包含成员列表
    search                                                           搜索用户
    unfollow                                                         取消关注
    unreadCount                                                      未读消息通知
    getPinProjects                                                   获取常用项目列表
    update_1                                                         更新项目信息
    recommendedList                                                  推荐项目list
    publicProject                                                    公有项目列表
    queryByName <user> <project>                                     通过名称查询
    setProjectIcon <user> <project>                                  设置项目图标
    star <user> <project>                                            收藏项目
    stared <user> <project>                                          项目是否被收藏
    unstar <user> <project>                                          项目取消收藏
    unwatch <user> <project>                                         项目取消关注
    visitProject <user> <project>                                    更新项目阅读时间
    watch <user> <project>                                           关注项目
    watched <user> <project>                                         项目是否被关注
    watchers <user> <project>                                        项目关注者
    project_list                                                     我的项目列表
    private_projects                                                 私有项目列表
    createProject <global_key>                                       创建项目
    public_projects <global_key>                                     公有项目列表
    create <project>                                                 创建任务
    getTask <project> <id>                                           创建任务
    listOfOwner <project> <owner> <status>                           列出某人的任务列表
    taskCreating                                                     全局任务创建
    taskCountByUser <user> <project>                                 任务统计信息
    update4client <user> <project> <id>                              修改任务
    pubComment <user> <project> <id>                                 创建任务评论
    deleteComment <user> <project> <id> <commentId>                  删除任务评论
    getComments <user> <project> <id>                                获取任务评论
    updateContent <user> <project> <id>                              修改任务内容
    updateDeadline <user> <project> <id>                             修改任务截止日期
    getDescription <user> <project> <id>                             获取任务描述
    addTaskLabel <user> <project> <id> <labelId>                     添加任务标签
    operateTaskLabels <user> <project> <id>                          批量操作任务标签
    updateOwner <user> <project> <id>                                修改任务执行者
    updatePriority <user> <project> <id>                             修改任务优先级
    updateStatus <user> <project> <id>                               修改任务状态
    watch_2 <user> <project> <id>                                    关注任务
    pageTaskWatchers <user> <project> <id>                           关注该任务的用户
    userTasksCount <user> <project>                                   获取当前用户项目的已完成、正在进行的、关注的数值
    userTasksCountInProject <user> <project>                         统计所有 已完成 和 正在处理 的任务数
    getTaskByLabel <user> <project> <id>                             查询标签下的任务列表
    userTasksOfProject <user> <project> <status>                     列出当前用户某项目某状态的任务列表
    list_5 <user> <project> <status>                                 任务列表
    userTasks <user> <status>                                        当前用户某状态的任务列表
    create_1                                                         发送冒泡
    bestUser                                                         热门用户
    query_a_comment <id>                                             获取某个评论
    insert_image                                                     冒泡插入图片
    lastTweet                                                        查询last_id以后的最新冒泡
    public_tweets                                                    冒泡列表
    user_public                                                      用户冒泡列表
    detail <global_key> <tweet_id>                                   获取冒泡详情
    comment <id>                                                     冒泡评论
    delete_comment <id> <comment_id>                                 删除冒泡评论
    query_comment <id>                                               获取冒泡评论列表
    deleteTweet <tweet_id>                                           删除冒泡
    like_tweet <tweet_id>                                            冒泡点赞
    getTweetLike <tweet_id>                                          赞过的冒泡列表
    unlike_tweet <tweet_id>                                          冒泡取消点赞
    public_tweets                                                    冒泡广场列表
    checkExisted <user> <project> <dir>                              检查目录下是否有同名的文件
    uploadFileHistory <user> <project>                               上传文件新版本
    deleteFiles <user> <project>                                     删除文件
    deleteFileHistory <user> <project> <id>                          删除文件历史
    downloadHistory <user> <project> <id>                            下载历史文件版本
    uploadFile <user> <project>                                      上传私有项目的图片
    downloadFile <user> <project> <fileId>                           文件下载
    downloadURL <user> <project> <fileId>                            文件下载URL
    editFile <user> <project> <fileId>                               编辑文件
    viewFile <user> <project> <fileId>                               查看文件
    imagePreview <user> <project> <fileId>                           图片预览
    updateFileHistoryRemark <user> <project> <file_id> <history_id>  修改历史版本备注
    createFile <user> <project> <folderId>                           创建文件
    listFileHistory <user> <project> <id>                            文件历史
    mkdir <user> <project>                                           创建文件夹
    move <user> <project> <dirId>                                    移动文件
    renameFolder <user> <project> <dir>                              重命名文件夹
    listFile <user> <project> <dir>                                  列出某目录下的文件
    listFolder <user> <project>                                      列出所有一级目录
    listAllFolder <user> <project>                                   列出所有目录
    allFolderFileCount <user> <project>                              获取文件夹的文件数
    index <user> <project>                                           获取仓库信息
    fork <user> <project>                                            fork
    forks <user> <project>                                           项目被fork的列表
    createWebHook <user> <project>                                   创建 webhook
    getWebHook <user> <project> <id>                                 获取 webhook
    listWebHook <user> <project>                                     列出项目设置的 webhook
    importRepo <user> <project>                                      导入仓库
    initDepot <user> <project>                                       初始化仓库
    blob <user> <project> <blob>                                     获取 blob
    setDefaultBranch <user> <project>                                设置默认分支
    list <user> <project>                                            分页显示分支列表
    createBranch <user> <project>                                    新建分支
    deleteBranch <user> <project>                                    删除分支
    addProtectedBranchMember <user> <project>                        添加保护分支成员
    disableProtectedBranch <user> <project>                          取消保护分支
    enableProtectedBranch <user> <project>                           设置保护分支
    listProtectedBranchMember <user> <project>                       列出保护分支中的成员
    removeProtectedBranchMember <user> <project>                     删除保护分支成员
    show <user> <project> <commit>                                   commit 列表
    history <user> <project> <commits>                               获取代码的历史
    delete_file <user> <project> <file>                              删除文件
    edit_file <user> <project> <file>                                更新文件
    create_file <user> <project> <file>                              新建文件
    do_create <user> <project>                                       创建 MergeRequest
    show_2 <user> <project> <iid>                                    显示某个 MergeRequest
    cancel <user> <project> <iid>                                    取消 MergeRequest
    merge <user> <project> <iid>                                     合并某个 MergeRequest
    refuse <user> <project> <iid>                                    拒绝某个 MergeRequest
    list_2 <user> <project> <status>                                 MergeRequest 列表
    create <user> <project>                                          创建 PullRequest
    show_3 <user> <project> <iid>                                    获取某个 PullRequest
    cancel_1 <user> <project> <iid>                                  取消 PullRequest
    comments <user> <project> <iid>                                  PullRequest 评论列表
    showCommits <user> <project> <iid>                               获取某个 PullRequest 的评论
    merge_1 <user> <project> <iid>                                   合并 PullRequest
    refuse_1 <user> <project> <iid>                                  拒绝 PullRequest
    list_3 <user> <project> <status>                                 PullRequest 列表
    list_4 <user> <project>                                          标签列表
    createTag <user> <project>                                       创建标签
    deleteTag <user> <project>                                       删除标签
    tree <user> <project> <tree>                                     目录
    projectTopicList <user> <project>                                项目讨论列表
    topicCount <user> <project>                                      所有讨论的个数和我的讨论的个数
    getProjectTopicByLabel <user> <project> <id>                     通过标签获得讨论列表
    getMyLabelByProject <user> <project>                             所有讨论的个数和我的讨论的个数
    myProjectTopicList <user> <project>                              我的讨论
    myWatchingProjectTopics <user> <project>                         获取我关注的讨论列表
    projectTopicDetail <user> <project> <id>                         讨论详情
    projectTopicComments <user> <project> <id>                       讨论评论列表
    addTopicLabel <user> <project> <id> <labelId>                    讨论添加标签
    operateTopicLabels <user> <project> <id>                         批量操作讨论标签
    watch_1 <user> <project> <id>                                    关注讨论
    getTopicWatchers <user> <project> <id>                           获取关注该讨论的用户
    show_1 <global_key> <keyId>                                      通过KeyId获取个人公钥
    list_1 <global_key>                                              列出个人公钥
    bindDeployKey <global_key> <project> <id>                        绑定部署公钥
    saveDeployKey <global_key> <project>                             新建部署公钥
    listDeployKeys <global_key> <project>                            列出部署公钥
    unBindDeployKey <global_key> <project> <id>                      解绑部署公钥

  A simple command-line tool for coding.net by nodejs

  Options:

    -h, --help     output usage information
    -V, --version  output the version number



```

```
.
├── package.json
├── README.md
├── bin //编译后的 js 文件
│   └── coding //入口文件
├── src //CoffeeScript源码
│   ├── BaseModel.coffee
│   ├── CmdBase.coffee
│   ├── index.coffee
│   └── models //模块化
│       └── OAuth.coffee
└── temp //缓存及配置
```


参照 [`cli-gitlab`](https://github.com/mdsb100/cli-gitlab) 开发