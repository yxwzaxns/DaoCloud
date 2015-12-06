## 什么是 New Relic

####  New Relic是一款基于 SaaS 的云端应用监测与管理平台，可以监测和管理云端、网络端及移动端的应用，能让开发者以终端用户、服务器端或应用代码端的视角来监控自己的应用。目前New Relic 提供的服务包括终端用户行为监控、应用监控、数据库监控、基础底层监控以及单个平台的监控，能为应用的健康提供实时的可预见性。例如，当出现大量用户无法登录帐号时，New Relic 提供的实时服务能让用户在投诉蜂拥而至之前找到问题的症结所在，进而让开发运营团队实时管理其应用的表现。

## 在 DaoCloud 服务集成创建 New Relic 服务。

1. 登录 DaoCloud 控制台，选择「服务集成」。

  ![](image_1.png)

2. 在「SaaS 服务」里选择 New Relic 服务。

  ![](image_2.png)

3. 点击 「创建服务实例」。

  ![](image_3.png)

4. 输入服务实例名称，输入 APP_NAME 和您在 New Relc 获取的 LICENSE_KEY，点击「创建」按钮创建 New Relic 服务实例

  ![](image_4.png)

5. 创建完成，可以看到 New Relic 服务的相关信息，比如 New Relic 使用的 APP_NAME 和 LICENSE_KEY。

  ![](image_5.png)

6. 在「我的服务」里查看已创建的 New Relic 服务

  ![](image_6.png)

## New Relic 与我的应用绑定

1. 选择需要绑定 New Relic 服务的应用，在「应用配置」下的「服务绑定」里选择刚刚创建好的 New Relic。

  > 您可以在创建应用时绑定 New Relic，也可以把 New Relic 绑定在现有的应用上。

  ![](image_9.png)

2. 当您选择了要绑定的 New Relic 服务以后，下面会显示出所选 New Relic 的相关信息。

  ![](image_10.png)

## 如何使用 New Relic
我们将在用一个例子来演示在 DaoCloud 上怎么使用 New Relc 服务，具体步骤如下：

1. 在 [New Relic]() 官网注册您的 New Relic 账号。
2. 登录 New Relic,选择 RPM 服务。

3. 接着选择我们要监控的项目所使用的语言或框架。
4. 填写相关信息，获得 LICENSE_KEY


#### 至此，我们已经掌握了如何创建和使用 DaoCloud 平台之上的 New Relic 服务。
