FROM anacha/ng:6.1.0-alpine

LABEL maintainer="Anucha Nualsi <ana.cpe9@gmail.com>"

COPY entrypoint.cha.sh chrome-fix.sh /

ENV DISPLAY=:99 CHROME_BIN=/chrome-fix.sh FIREFOX_BIN=/usr/bin/firefox LANG=en_US.UTF-8 LC_ALL=en_US.UTF-8 LANGUAGE=en_US.UTF-8

RUN chmod a+x /entrypoint.cha.sh && \
    chmod a+x /chrome-fix.sh && \
    apk update && \
    apk upgrade && \
    apk add --no-cache --update \
    ttf-freefont \
    "eudev=3.2.5-r2" \
    "dbus=1.10.24-r1" \
    "dbus-x11=1.10.24-r1" \
    "xvfb=1.19.6-r2" \
    "chromium=64.0.3282.168-r0" \
    "chromium-chromedriver=64.0.3282.168-r0" \
    "firefox-esr=52.8.1-r0" && \
    ln -sf /usr/bin/dbus-daemon /bin/dbus-daemon && \
    ln -sf /usr/bin/dbus-uuidgen /bin/dbus-uuidgen && \
    ln -sf /usr/bin/dbus-binding-tool /dbus-binding-tool && \
    ln -sf /usr/bin/dbus-cleanup-sockets /dbus-cleanup-sockets && \
    ln -sf /usr/bin/dbus-monitor /dbus-monitor && \
    ln -sf /usr/bin/dbus-run-session /bin/dbus-run-session && \
    ln -sf /usr/bin/dbus-send /bin/dbus-send && \
    ln -sf /usr/bin/dbus-test-tool /bin/dbus-test-tool && \
    ln -sf /usr/bin/dbus-update-activation-environment /bin/dbus-update-activation-environment && \
    rm -rf /tmp/* && \
    rm -rf /var/tmp/* && \
    rm -rf /var/cache/apk/*

ENTRYPOINT ["/entrypoint.cha.sh"]
