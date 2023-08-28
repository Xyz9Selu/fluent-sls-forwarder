
| NAME | REQUIRED | DEFAULT | DESCRIPTION |
|------|----------|---------|-------------|
| LISTEN_PORT | NO | 24224 | 监听端口 |
| LISTEN_HOST | NO | 0.0.0.0 | 监听IP, 0.0.0.0代表不限制 |
| FLUSH_INTERVAL | NO | 1 | 投递间隔, 单位为秒 |
| LOG_LEVEL | NO | debug | 处理日志级别 |
| MESSAGE_KEY | NO | content | 消息Key |
| TIMESTAMP_KEY | NO | @timestamp | 时间戳Key |
| SLS_PROJECT | YES | - | 日志项目名 |
| SLS_KAFKA_ENDPOINT | YES | - | 日志服务接入点. 例如: 杭州: cn-hangzhou.log.aliyuncs.com:10012 |
| ACCESS_KEY_ID | YES | - | 有SLS写入权限的ACCESS_KEY_ID |
| ACCESS_KEY_SECRET | YES | - | 对应ACCESS_KEY_SECRET |
| TOPICS | YES | - | 日志存储 |


