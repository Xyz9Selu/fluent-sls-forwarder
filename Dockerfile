FROM fluent/fluent-bit

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

EXPOSE 24224

CMD ["/fluent-bit/bin/fluent-bit", "-c", "/fluent-bit/etc/fluent-bit.conf"]
