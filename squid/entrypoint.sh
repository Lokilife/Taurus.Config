#!/bin/sh
set -e

if [ ! -d /var/cache/squid/00 ]; then
    echo "Initializing cache directory..."
    su -c 'squid -z' squid
fi

chown -R squid:squid /var/cache/squid /var/log/squid

# foreground mode (not daemon)
exec squid -NYCd 1
