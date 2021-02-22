# Squoosh-cli

Wraps the squoosh CLI into an OCI image for easy using.  I put a bash function in the `~/.bashrc` file called `squoosh-cli` so I don't even have to know I'm using a container:

```bash
squoosh-cli ()
{
  podman run \
    --rm \
    --volume "$(pwd):/squoosh:Z" \
    quay.io/freedomben/squoosh:latest \
    "$@"
}
```

Note that I'm using rootless `podman`, so the `root` user in the container ends up being the user I invoked it with.

If you are going to use this let me know and I'll try to maintain it in a way that supports others.  Right now it's just me so I'm not putting effort into that.
