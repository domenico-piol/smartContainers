FROM ubi9/python-311

USER root

RUN dnf check-update; \
#    dnf install -y python3-pip; \
    dnf install -y wget; \
    dnf install -y postgresql; \
    dnf -y install buildah; \
    dnf -y install skopeo; \
    dnf clean all

RUN pip3 install --upgrade pip; \
    python3 -m pip install ansible; 

USER 1001

RUN chgrp -R 0 /opt/app-root/src && \
    chmod -R g+rwX /opt/app-root/src
