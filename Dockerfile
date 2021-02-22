FROM fedora:33

RUN dnf update -y \
 && dnf install -y nodejs \
 && dnf clean all -y

RUN npm install -g @squoosh/cli

RUN mkdir /squoosh
WORKDIR /squoosh

ENTRYPOINT ["/usr/local/bin/squoosh-cli"]
CMD ["--help"]

# Mount $(pwd) to /squoosh when running the image
