# theBIGGAME/streamnet_config

`streamnet_config` contains the configuration bundle / dockerfiles that build up the Streamnet server (aka stream.biggame).

A docker-compose manifest is included in the root which should spin everything up (but you'll need to copy in a nodecg bundle to `/nodecg/bundles`, as well as the `streamnet_app` application to `/app`).

## To Install

```console
git clone --recurse-submodules git@github.com:thebiggame/streamnet_config.git
cd streamnet_config
docker-compose up
```
