# this project was forked by _*[cha/nodetestplat](https://lab.er.co.th/cha/nodetestplat)*_ project

## docker-image dependencies graph

```text
+-- alpine:3.7 (3.962 MB)                                 ====> official image
    |
    +-- node:10.1.0-alpine (64.64 MB)                     ====> official image
    |   |
    |   +-- anacha/ng:6.0.0-rc.2-alpine (108 MB)          ====> optional ***
    |   `-- anacha/ng:6.0.3-alpine (108 MB)               ====> base images
    |       |
    |      (+)-- anacha/ng-testplat:6.0.3-alpine (285 MB) ====> this project ***
    |       |
    `-------'--- anacha/e2e-testplat:57 (181 MB)          ====> (Optional for other projects)
```

| Image                    | base-0 image    | base-1 image      | base-2 image |
| ------------------------ | --------------- | ----------------- | ------------ |
| ng-testplat:6.0.3-alpine | ng:6.0.3-alpine | node:10.1.0-alpine| alpine:3.7   |
| ng-testplat:1.7.4-alpine | ng:1.7.4-alpine | node:9.10.1-alpine| alpine:3.6   |
| ng-testplat:1.7.3-alpine | ng:1.7.3-alpine | node:9.7.1-alpine | alpine:3.6   |
| ng-testplat:1.7.2-alpine | ng:1.7.2-alpine | node:9.6.1-alpine | alpine:3.6   |
| ng-testplat:1.7.1-alpine | ng:1.7.1-alpine | node:9.6.1-alpine | alpine:3.6   |
| ng-testplat:1.7.0-alpine | ng:1.7.0-alpine | node:9.5.0-alpine | alpine:3.6   |
| ng-testplat:1.6.8-alpine | ng:1.6.8-alpine | node:9.5.0-alpine | alpine:3.6   |
| ng-testplat:1.6.7-alpine | ng:1.6.7-alpine | node:9.5.0-alpine | alpine:3.6   |
| ng-testplat:1.6.6-alpine | ng:1.6.6-alpine | node:9.4.0-alpine | alpine:3.6   |
| ng-testplat:1.6.5-alpine | ng:1.6.5-alpine | node:9.4.0-alpine | alpine:3.6   |
| ng-testplat:1.6.4-alpine | ng:1.6.4-alpine | node:9.4.0-alpine | alpine:3.6   |
| ng-testplat:1.6.3-alpine | ng:1.6.3-alpine | node:9.3.0-alpine | alpine:3.6   |
| ng-testplat:1.6.2-alpine | ng:1.6.2-alpine | node:9.3.0-alpine | alpine:3.6   |
| ng-testplat:1.6.1-alpine | ng:1.6.1-alpine | node:9.3.0-alpine | alpine:3.6   |
| ng-testplat:1.6.0-alpine | ng:1.6.0-alpine | node:9.2.0-alpine | alpine:3.6   |
| ng-testplat:1.5.5-alpine | ng:1.5.5-alpine | node:9.2.0-alpine | alpine:3.6   |
| ng-testplat:1.5.4-alpine | ng:1.5.4-alpine | node:9.2.0-alpine | alpine:3.6   |
| ng-testplat:1.5.3-alpine | ng:1.5.3-alpine | node:9.2.0-alpine | alpine:3.6   |
| ng-testplat:1.5.2-alpine | ng:1.5.2-alpine | node:9.2.0-alpine | alpine:3.6   |
| ng-testplat:1.5.2-alpine | ng:1.5.0-alpine | node:9.0.0-alpine | alpine:3.6   |

## e2e-testplat alpine packages

- ttf-freefont
- eudev=3.2.4-r1
- dbus=1.10.24-r0
- dbus-x11=1.10.24-r0
- xvfb=1.19.5-r0
- chromium=61.0.3163.100-r0
- chromium-chromedriver=61.0.3163.100-r0
- firefox-esr=52.7.3-r0

## Source Repository

- [**cha-node/ng-testplat | Gitlab**](https://gitlab.com/cha-node/ng-testplat) - main repo.
- [anacpe9/ng-testplat | Github](https://github.com/anacpe9/ng-testplat) - mirror.
- [anacpe9/ng-testplat | Bitbucket](https://bitbucket.org/anacpe9/ng-testplat) - mirror.

## License

[MIT](LICENSE)