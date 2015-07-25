FROM bingli/kazoo-base
MAINTAINER Bing Li <bingli1000@gmail.com>

RUN yum install -y kazoo-ui \
                    monster-ui-accounts monster-ui-core monster-ui-numbers \
                    monster-ui-pbxs monster-ui-voip monster-ui-webhooks \
                    httpd

ADD entrypoint.sh /root/

VOLUME ["/var/log"]

ENTRYPOINT ["/root/entrypoint.sh"]

EXPOSE 80



