var util = require('util');

module.exports = function() {

    var modules = [
            "Users",
            "OAuth",
            "Projects",
            "Tasks",
            "Tweets",
            "Files",
            "Depots",
            "Blobs",
            "Branchs",
            "Commits",
            "Historys",
            "Repo_files",
            "Merge_requests",
            "Pull_requests",
            "Tags",
            "Trees",
            "Project_topics",
            "Keys"];

    try{
        modules = process.env.MOD.split(",")
    }catch(e){}

    var scope = [
            "user",
            "user:email",
            "notification",
            "social",
            "social:tweet",
            "social:message",
            "project",
            "project:members",
            "project:task",
            "project:file",
            "project:depot",
            "project:key"];

    return {
        "url": "https://coding.net",
        "cache": "./temp",

        "clientId": "2deaa488ed11bf3d1c7f37bdfd58ec54",
        "clientSecret": "37124c46b1105ce9f0495259e5c08e0465a045d5",
        "port": 8001,
        "modules": modules,
        "scope": scope,
        "lang":"en",// 默认语言
        /*"transport":function(data){
            // 自定义输出样式
            console.log(data);
        }*/
    }
}
