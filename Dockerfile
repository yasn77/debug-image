FROM nixery.dev/busybox/curl/httpie/dig/git/dropbear/mise

COPY mise.toml /etc/mise/config.toml
RUN mise trust && mise install -y && mise cache clean
