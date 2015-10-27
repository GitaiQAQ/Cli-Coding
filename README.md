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