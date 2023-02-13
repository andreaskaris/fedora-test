FROM registry.fedoraproject.org/fedora:latest
RUN useradd -u 1001 exampleuser
USER 1001
RUN whoami
COPY script.sh /script.sh
CMD ["/bin/bash", "/script.sh"]
