FROM centos:7.9.2009

COPY docker-entrypoint.sh /

RUN rpm --import https://repo.saltproject.io/py3/redhat/7/x86_64/3004/SALTSTACK-GPG-KEY.pub && curl -fsSL https://repo.saltproject.io/py3/redhat/7/x86_64/3004.repo | tee /etc/yum.repos.d/salt.repo && yum install -y salt-minion

RUN chmod +x /docker-entrypoint.sh

CMD /docker-entrypoint.sh
