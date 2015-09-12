# Supported tags and respective `Dockerfile` links

-   [`latest` (*latest/Dockerfile*)](https://github.com/diegomarangoni/docker-composer/blob/master/Dockerfile)

## How to use

### Create a binary `/usr/local/bin/composer`:

```bash
#!/bin/bash

exec docker run \
  --rm \
  -it \
  -v $HOME:$HOME \
  -w $PWD \
  diegomarangoni/composer \
  composer $@
```

### Add run permission:

```
chmod +x /usr/local/bin/composer
```

### Use it:

```
composer --version
```
