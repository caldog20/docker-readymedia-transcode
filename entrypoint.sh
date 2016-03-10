#!/bin/bash

sed --in-place='.ori' -e 's@MINIDLNA_TRANSCODE_VIDEO_TRANSCODER@'"$MINIDLNA_TRANSCODE_VIDEO_TRANSCODER"'@' /etc/minidlna.conf
sed --in-place='.ori' -e 's@MINIDLNA_PORT@'"$MINIDLNA_PORT"'@' /etc/minidlna.conf
sed --in-place='.ori' -e 's@MINIDLNA_FRIENDLY_NAME@'"$MINIDLNA_FRIENDLY_NAME"'@' /etc/minidlna.conf

minidlnad $MINIDLNA_OPTS

bash
