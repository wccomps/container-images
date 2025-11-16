FROM alpine
RUN apk add tini su-exec openssh-client
RUN ssh-keyscan jumpbox.wccomps.org >> /etc/ssh/ssh_known_hosts
COPY --from=tsl0922/ttyd:alpine /usr/bin/ttyd /usr/bin/ttyd
COPY jumpbox.sh /
USER nobody
EXPOSE 7681
ENTRYPOINT ["/sbin/tini", "--"]
CMD ["ttyd", "-W", "/jumpbox.sh"]
