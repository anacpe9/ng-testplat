#!/bin/ash

set -e

PACKAGES="eudev=3.2.7-r0 dbus=1.10.24-r1 dbus-x11=1.10.24-r1 xvfb=1.19.6-r3 chromium=71.0.3578.98-r2 chromium-chromedriver=71.0.3578.98-r2 firefox-esr=60.4.0-r1"

echo "alpine $(cat /etc/alpine-release)"
HASOUTDATEPACKAGE="n"

apk update
apk upgrade

for package in $PACKAGES
do
    echo "$package"
    packagename="$(echo $package | cut -d'=' -f1)"
    packageversion="$(echo $package | cut -d'=' -f2)"

    # echo -e "   packagename: $packagename\npackageversion: $packageversion"

    ## [ "$(apk info -v | grep -e musl-[0-9]?*)" != "$(apk search -x musl)" ] && \
    ##    (echo -e "\nThis package is outdate.\n local: $(apk info -v | grep -e musl-[0-9]?*)\nremote: $(apk search -x musl)\n")

    [ "$packagename-$packageversion" != "$(apk search -x $packagename)" ] && \
       (echo -e "\`-- This package is outdate.\n    +-- local: $packagename-$packageversion\n    \`--remote: $(apk search -x $packagename)\n") && \
       HASOUTDATEPACKAGE="y"

done

if [ "$HASOUTDATEPACKAGE" = "n" ]
then
   EXITCODE=0
else
   EXITCODE=1
fi

echo -e "\n\n========================================\nHASOUTDATEPACKAGE: $HASOUTDATEPACKAGE\nEXITCODE: $EXITCODE\n========================================"

exit $EXITCODE
