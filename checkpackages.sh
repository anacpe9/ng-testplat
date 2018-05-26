#!/bin/ash

set -e

PACKAGES="eudev=3.2.4-r1 dbus=1.10.24-r0 dbus-x11=1.10.24-r0 xvfb=1.19.5-r0 chromium=61.0.3163.100-r0 chromium-chromedriver=61.0.3163.100-r0 firefox-esr=52.7.3-r0"

cat /etc/alpine-release
HASOUTDATEPACKAGE="n"

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
