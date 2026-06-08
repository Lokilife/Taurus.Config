#!/bin/sh
set -e

if [ ! -d /var/cache/squid/00 ]; then
    echo "Initializing cache directory..."
    squid -z -F
fi

# foreground mode (not daemon)
exec squid -NYCd 1
