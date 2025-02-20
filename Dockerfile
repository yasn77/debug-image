ARG BASE_IMAGE=nixery.dev/shell/openssl/tcpdump/tmux/netcat/busybox/curl/httpie/dig/git/mtr/dropbear/docker-client/mise

FROM $BASE_IMAGE

COPY mise.toml /etc/mise/config.toml
RUN mise trust && mise install -y && mise cache clean

CMD [ "busybox" ]
