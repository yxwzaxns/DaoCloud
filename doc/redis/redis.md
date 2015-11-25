## Redis 与应用绑定
  1. 选择需要绑定Redis服务的应用，在「应用配置」下的「服务绑定」里选择
  刚刚创建好的 Redis 服务，当您选择了要绑定的 Redis 服务以后，会发现下面出现了关于连接 Redis 所需要的信息，在您选择保存更改以后，这些信息会写入到您绑定应用的环境变量里，这样您就可以在代码里通过读取相关环境变量来使用 Redis 服务。(您可以在创建应用时绑定 Redis 服务，也可以把 Reids 服务绑定在现有的应用上)。

  2. 读取环境变量，下面我们展示一段使用 Ruby 语言来读写 Redis 的具体代码（完整例子的 Docker 镜像请参考 [GitHub](https://github.com/yxwzaxns/DaoCloud_redis.git)）

    `require 'redis'`

    `redis = Redis.new(:host => ENV['REDIS_PORT_6379_TCP_ADDR'],:port => ENV['REDIS_PORT_6379_TCP_PORT'],:password => ENV['REDIS_PASSWORD'])`

    `#Redis 写操作：`

    `redis.set("name","DaoCloud")`

    `#Redis 读操作：`

    `redis.get("name")`

## 管理 Redis 服务
 1. 管理我的 Redis 服务

      在 GitHub 上有许多 Redis 服务管理工具，比如 [phpRedisAdmin](https://github.com/erikdubbelboer/phpRedisAdmin.git)，这里我们把 phpRedisAdmin 构建成 Docker 镜像来管理我们的 Redis 服务。

      GitHub 地址：[https://github.com/yxwzaxns/DaoCloud_phpRedisAdmin.git](https://github.com/yxwzaxns/DaoCloud_phpRedisAdmin.git)

 2. 部署管理工具，绑定到之前创建的 Redis 服务

 3. 应用启动成功后就可以执行常规的 Redis 服务管理操作
