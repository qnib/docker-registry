FROM qnib/alpn-consul

ENV REG_VER=2.3.0
VOLUME ["/var/lib/registry"]
RUN apk --no-cache add wget jq \
 && wget -qO /usr/local/bin/docker-registry https://github.com/ChristianKniep/distribution/releases/download/v${REG_VER}/registry_${REG_VER}_Liunx \
 && chmod +x /usr/local/bin/docker-registry
ADD etc/supervisord.d/docker-registry.ini /etc/supervisord.d/
ADD etc/consul.d/docker-registry.json /etc/consul.d/
ADD etc/docker-registry/config.yml /etc/docker-registry/
