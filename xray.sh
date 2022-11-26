#!/bin/sh
if [ ! -f UUID ]; then
  UUID="938415bb-7df2-14dc-992d-8904a5bb6df2"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

