#!/bin/bash
echo rsyncing to NFSN...
rsync -zvr -e ssh _site/ bsilver_bsilver@nfsn:/home/public/
