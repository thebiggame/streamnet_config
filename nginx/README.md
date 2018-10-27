## /nginx

This is a special docker image with nginx, rtmp, and ffmpeg built in.

It is designed to be run with config files that automatically transcode incoming feeds to another ingest endpoint for consumption.

### Config Files / Scripts

The config files inside `/nginx/config` are examples only, and should be modified to your taste (they're fairly hard coded to sit as a reverse proxy for NodeCG / other stuff, which probably isn't appropriate for your environment).

`/nginx/config/stat.xsl` is provided under the terms set out at https://github.com/arut/nginx-rtmp-module/blob/master/LICENSE
