FROM registry.fedoraproject.org/fedora-minimal:latest
RUN microdnf install -y --disablerepo=* --enablerepo=fedora --enablerepo=updates python3-pip && \
    microdnf clean all && \
    pip3 install autopep8
ENTRYPOINT ["autopep8"]
