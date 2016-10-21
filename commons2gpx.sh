#!/bin/sh
if test -z "$2"; then
    echo Usage $0 lat lon
else
    curl -s "https://commons.wikimedia.org/w/api.php?action=query&format=xml&generator=geosearch&ggsnamespace=6&ggsradius=10000&ggscoord=$1%7C$2&prop=coordinates|imageinfo&iiprop=url" |
        xmlstarlet tr transform.xslt
fi
