#!/bin/sh

which hey
if [ $? -ne 0 ]; then
  echo 'Hey tool not installed.'
  exit 1
fi

echo '- Running test ...'
/usr/local/bin/hey -n 1 -c 1 -q 1 -z 2s -h2 -m GET http://localhost/
