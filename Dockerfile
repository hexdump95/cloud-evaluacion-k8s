FROM alpine:3.14

WORKDIR /usr/local/bin/
ENV KUBECTL_VERSION=v1.22.2
RUN apk add --no-cache curl bash \
&& curl -sfLO https://dl.k8s.io/release/$KUBECTL_VERSION/bin/linux/amd64/kubectl \
&& chmod 0755 kubectl
CMD ["/bin/sh"]
