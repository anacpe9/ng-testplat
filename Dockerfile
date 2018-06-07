FROM anacha/ng:6.0.8-alpine

LABEL maintainer="Anucha Nualsi <ana.cpe9@gmail.com>"

COPY entrypoint.cha.sh chrome-fix.sh /

ENV DISPLAY=:99 CHROME_BIN=/chrome-fix.sh FIREFOX_BIN=/usr/bin/firefox LANG=en_US.UTF-8 LC_ALL=en_US.UTF-8 LANGUAGE=en_US.UTF-8

RUN chmod a+x /entrypoint.cha.sh && \
    chmod a+x /chrome-fix.sh && \
    apk update && \
    apk upgrade && \
    apk add --no-cache --update \
        ttf-freefont \
        "eudev=3.2.4-r1" \
        "dbus=1.10.24-r0" \
        "dbus-x11=1.10.24-r0" \
        "xvfb=1.19.5-r0" \
        "chromium=61.0.3163.100-r0" \
        "chromium-chromedriver=61.0.3163.100-r0" \
        "firefox-esr=52.8.0-r0" && \
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
