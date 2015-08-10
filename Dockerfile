FROM bingli/kazoo-base
MAINTAINER Bing Li <bingli1000@gmail.com>

RUN yum install -y kazoo-ui \
                    monster-ui-accounts monster-ui-core monster-ui-numbers \
                    monster-ui-pbxs monster-ui-voip monster-ui-webhooks \
                    httpd
                    
RUN yum -y --nogpgcheck localinstall http://repo.2600hz.com/Packages/Kazoo-UI/CentOS_6/noarch/3.20/kazoo-ui-3.20-0.el6.noarch.rpm \
           http://repo.2600hz.com/Packages/Monster-UI-Core/CentOS_6/noarch/3.20/monster-ui-core-3.20-1.el6.noarch.rpm \
           http://repo.2600hz.com/Packages/Monster-UI-Apps/CentOS_6/noarch/3.20/monster-ui-accounts-3.20-0.el6.noarch.rpm \
           http://repo.2600hz.com/Packages/Monster-UI-Apps/CentOS_6/noarch/3.20/monster-ui-numbers-3.20-0.el6.noarch.rpm \
           http://repo.2600hz.com/Packages/Monster-UI-Apps/CentOS_6/noarch/3.20/monster-ui-pbxs-3.20-0.el6.noarch.rpm \
           http://repo.2600hz.com/Packages/Monster-UI-Apps/CentOS_6/noarch/3.20/monster-ui-voip-3.20-0.el6.noarch.rpm \
           http://repo.2600hz.com/Packages/Monster-UI-Apps/CentOS_6/noarch/3.20/monster-ui-webhooks-3.20-0.el6.noarch.rpm

ADD entrypoint.sh /root/

VOLUME ["/var/log"]

ENTRYPOINT ["/root/entrypoint.sh"]

EXPOSE 80



