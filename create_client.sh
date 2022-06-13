#/bin/bash

OVPN_DATA=ovpn-data
CLIENT=$1

docker run -v $OVPN_DATA:/etc/openvpn --rm -it kylemanna/openvpn easyrsa build-client-full $CLIENT nopass && \
docker run -v $OVPN_DATA:/etc/openvpn --rm kylemanna/openvpn ovpn_getclient $CLIENT > $CLIENT.ovpn
