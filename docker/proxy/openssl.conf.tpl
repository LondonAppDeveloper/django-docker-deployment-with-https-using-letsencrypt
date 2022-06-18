[dn]
CN=${DOMAIN}

[req]
distinguished_name=dn

[EXT]
subjectAltName=DNS:${DOMAIN}, DNS:www.${DOMAIN}
keyUsage=digitalSignature
extendedKeyUsage=serverAuth
