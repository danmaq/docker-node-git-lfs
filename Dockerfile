FROM node
LABEL authors="Shuhei Nomura <info@danmaq.com>"
RUN curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | bash \
  && apt-get update \
  && apt-get install -y git-lfs \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*