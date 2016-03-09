#!/bin/bash

sed --in-place='.ori' -e 's@TRANSCODE_VIDEO_TRANSCODER@'"$TRANSCODE_VIDEO_TRANSCODER"'@' /etc/minidlna.conf

minidlnad $MINIDLNA_OPTS

bash
