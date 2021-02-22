# Squoosh-cli

Wraps the [squoosh](https://github.com/GoogleChromeLabs/squoosh) CLI into an OCI image for easy using.  I put a bash function in the `~/.bashrc` file called `squoosh-cli` so I don't even have to know I'm using a container:

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

Now to run squoosh, I just use it like normal:

```
$ squoosh-cli --output-dir outputdir/ --mozjpeg '{}' profile-enh.png
```

If you don't pass args it will print out the `squoosh-cli` help menu (`--help`).  This is useful if you forget the args.

Note that I'm using rootless `podman`, so the `root` user in the container ends up being the user I invoked it with.

If you are going to use this let me know and I'll try to maintain it in a way that supports others.  Right now it's just me so I'm not putting effort into that.

Thank you to Google for building this super helpful tool and releasing it open source!
