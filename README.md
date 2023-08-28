# 阿里云日志投递服务

接收Fluent Socket请求, 投递日志至阿里云日志服务

## 如何使用

启动命令: 

```bash
docker run \
  -p 127.0.0.1:24224:2224 \
  -e SLS_PROJECT=<sls-project> \
  -e SLS_KAFKA_ENDPOINT=<sls-kafka-endpoint> \
  -e TOPICS=<sls-storage> \
  -e ACCESS_KEY_ID=<aliyun-access-key> \
  -e ACCESS_KEY_SECRET=<aliyun-access-secret> \
  registry.cn-hangzhou.aliyuncs.com/axinfu/fluent-sls-forwarder:latest
```

## 环境变量

| NAME | REQUIRED | DEFAULT | DESCRIPTION |
|------|----------|---------|-------------|
| LISTEN_PORT | NO | 24224 | 监听端口 |
| LISTEN_HOST | NO | 0.0.0.0 | 监听IP, 0.0.0.0代表不限制 |
| FLUSH_INTERVAL | NO | 1 | 投递间隔, 单位为秒 |
| LOG_LEVEL | NO | debug | 处理日志级别 |
| STDOUT_TAG | NO | * | STDOUT打印TAG |
| MESSAGE_KEY | NO | content | 消息Key |
| TIMESTAMP_KEY | NO | @timestamp | 时间戳Key |
| SLS_PROJECT | YES | - | 日志项目名 |
| SLS_KAFKA_ENDPOINT | YES | - | 日志服务接入点. 例如: 杭州: cn-hangzhou.log.aliyuncs.com:10012 |
| ACCESS_KEY_ID | YES | - | 有SLS写入权限的ACCESS_KEY_ID |
| ACCESS_KEY_SECRET | YES | - | 对应ACCESS_KEY_SECRET |
| TOPICS | YES | - | 日志存储 |


