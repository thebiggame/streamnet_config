#!/bin/bash

on_die ()
{
    pkill -KILL -P $$
}

trap 'on_die' TERM
echo $(date +[%FT%TZ]) start transcode \"$1\" >> /var/log/nginx/transcode.log
ffmpeg -loglevel verbose -re -i rtmp://localhost/ingest/$1 -i /etc/nginx/watermark.png \
        -vcodec libx264 -vprofile baseline -preset veryfast \
        -s 1920x1080 -b:v 2500k -maxrate 2500k -acodec aac \
        -ar 44100 -ac 1 -filter_complex "[0:v][1:v]overlay=20:20[out]" -map "[out]" -map 0:a -f flv rtmp://localhost/pub/$1 2>> /var/log/nginx/transcode.log &
wait
rm -rf /srv/nginx/root/img/screenshot_$1.jpg
echo $(date +[%FT%TZ]) stop transcode \"$1\" >> /var/log/nginx/transcode.log
