FROM fugue/regula:v2.4.0 AS regula
USER root
RUN apk add --update bash jq
USER ${APP_USER}
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
