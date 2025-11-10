FROM busybox:latest

COPY --chmod=755 src/entrypoint.sh /entrypoint.sh

EXPOSE 9999

CMD ["nc", "-lk", "-p", "9999", "-e", "/entrypoint.sh"]