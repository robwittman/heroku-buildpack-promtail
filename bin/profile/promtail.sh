#!/usr/bin/env bash 

DYNOHOST="$(hostname )"
DYNOTYPE=${DYNO%%.*}
BUILDPACKVERSION="dev"
DYNO_TAGS="dyno:$DYNO dynotype:$DYNOTYPE buildpackversion:$BUILDPACKVERSION"

# Start the promtail binary
bash -c /usr/local/bin/promtail -config.file "${PROMTAIL_CONFIG}"
