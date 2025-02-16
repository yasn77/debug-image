FROM nixery.dev/busybox/curl/httpie/dig/git/mtr/dropbear/mise

COPY mise.toml /etc/mise/config.toml
RUN mise trust && mise install -y && mise cache clean

CMD [ "busybox" ]
