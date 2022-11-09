#!/bin/sh
if [ ! -f UUID ]; then
  UUID="83ba26a8-0e6b-43dd-be7e-bf6a25c9b9e4"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

