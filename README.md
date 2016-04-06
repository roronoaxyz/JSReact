# JSReact
使用react native 简单实现资讯界面

1､环境搭建： 
    1)安装node: brew install node 
    2)安装watchman: brew install --HEAD watchman 
    3)安装flow: brew install flow 
    4)./Pods/React npm start

2、切换本地 jsboundle
   控制台  curl http://localhost:8081/jsname.bundle -o jsname.jsbundle
   将jsboundle文件拖入工程
   NSURL *jsCodeLocation = [[NSBundle mainBundle] URLForResource:@"jsname" withExtension:@"jsbundle"];
