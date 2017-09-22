# Express-Query

本工程使用[快递100](http://www.kuaidi100.com/) 查询链接实现，仅供学习，禁止商业使用。

---

工程主要使用的是快递100官方提供的查询api

```
//先查询该单号所属快递商
http://www.kuaidi100.com/autonumber/autoComNum?text=快递单号
    
//返回的json样例
{
    "comCode": "",
    "num": "单号",
    "auto": [
        {
            "comCode": "huitongkuaidi",
            "id": "",
            "noCount": 8132,
            "noPre": "711426",
            "startTime": ""
        },
        {
            "comCode": "baishiwuliu",
            "id": "",
            "noCount": 49,
            "noPre": "711426",
            "startTime": ""
        }
    ]
}
```

>auto数组中每一个对象，都是可能的快递商信息，一般第一个为可能性最大的 

>comCode为快递商的代号，其余的我们不管 2333

>看更多快递商代号，可看delivery.sql

```
//再通过快递商代号以及快递单号查询具体的物流信息
http://www.kuaidi100.com/query?type=快递商代号&postid=快递单号
 
//返回的json样例
{
    "message": "ok",
    "nu": "单号",
    "ischeck": "1",
    "condition": "F00",
    "com": "shunfeng",
    "status": "200",
    "state": "3",
    "data": [
        {
            "time": "2017-09-12 02:07:33",
            "ftime": "2017-09-12 02:07:33",
            "context": "快件到达 【长沙星沙集散中心】",
            "location": ""
        },
        {
            "time": "2017-09-11 20:23:36",
            "ftime": "2017-09-11 20:23:36",
            "context": "快件在【湘西】已装车，准备发往 【长沙星沙集散中心】",
            "location": ""
        },
        {
            "time": "2017-09-11 19:54:40",
            "ftime": "2017-09-11 19:54:40",
            "context": "快件到达 【湘西】",
            "location": ""
        },
        {
            "time": "2017-09-11 17:54:33",
            "ftime": "2017-09-11 17:54:33",
            "context": "快件在【湘西自治州凤凰县金坪路营业点】已装车，准备发往 【湘西】",
            "location": ""
        },
        {
            "time": "2017-09-11 14:07:08",
            "ftime": "2017-09-11 14:07:08",
            "context": "顺丰速运 已收取快件",
            "location": ""
        }
    ]
}
```

>message：ok 表示没有问题，否则有错误信息

>nu：快递单号

>ischeck：1表示成功，0表示错误

>com：即comCode，快递商编号

>data：详细快递信息数组

>time：到达时间

>ftime：到达时间（不是很懂为什么要搞俩一模一样的）

>context：到达地点具体信息

>location：到达地点（基本上为空）

---

#### 依赖 jar包为：

- httpcore-4.4.4.jar
- httpclient-4.5.2.jar
- gson-2.8.0.jar
- commons-logging-1.2.jar
- commons-codec-1.9.jar

均在[target/dependency](https://github.com/Geekxiong/Express-Query/tree/master/ExpressQuery/target/dependency)下面



#### 打包的jar包在[target](https://github.com/Geekxiong/Express-Query/tree/master/ExpressQuery/target)下面

- ExpressQuery-0.0.1-SNAPSHOT-jar-with-dependencies.jar  包括了依赖包

- ExpressQuery-0.0.1-SNAPSHOT.jar  不包括依赖包

---

使用例子为工程中的Example，方法与类不多，源码中有注释

本人萌新，如有错误敬请谅解。


