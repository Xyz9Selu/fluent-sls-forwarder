FROM bitnami/fluent-bit:2-debian-11

ADD fluent-bit.conf /fluent-bit/etc/


ENV TZ=Asia/Shanghai

ENV LISTEN_PORT=24224
ENV LISTEN_HOST=0.0.0.0
ENV FLUSH_INTERVAL=1
ENV LOG_LEVEL=debug
ENV MESSAGE_KEY=content
ENV TIMESTAMP_KEY=@timestamp
ENV SLS_PROJECT=your-sls-project
ENV SLS_KAFKA_ENDPOINT=cn-hangzhou.log.aliyuncs.com:10012
ENV ACCESS_KEY_ID=your-access-key-id
ENV ACCESS_KEY_SECRET=your-access-key-secret
ENV TOPICS=test
ENV STDOUT_TAG=*

EXPOSE 24224

CMD ["-c", "/fluent-bit/etc/fluent-bit.conf"]
