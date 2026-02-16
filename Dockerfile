# Build on top of the upstream pre-built image
# Only change: run.sh sources /data/.env for persistent env overrides
FROM matt8707/addon-ha-fusion-amd64:2024.10.1

# Replace run.sh with our modified version
COPY run.sh /
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]
