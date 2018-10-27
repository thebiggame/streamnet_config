#!/bin/bash

on_die ()
{
    rm -rf /tmp/screenshots/$2_$1.jpg
    pkill -KILL -P $$
}

trap 'on_die' TERM
echo $(date +[%FT%TZ]) screenshot $2_$1.jpg >> /var/log/nginx/screenshot.log
ffmpeg -i rtmp://localhost/interna/$1 -updatefirst 1 -f image2 -vcodec mjpeg -vframes 1 -y /tmp/screenshots/$2_$1.jpg 2>> /var/log/nginx/screenshot-$1.log
sleep 5s
