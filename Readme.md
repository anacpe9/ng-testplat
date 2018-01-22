# this project was forked by _*[cha/nodetestplat](https://lab.er.co.th/cha/nodetestplat)*_ project

## docker-image dependencies graph

```text
+-- alpine:3.6 (3.962 MB)                                 ====> official image
    |
    +-- node:9.4.0-alpine (64.64 MB)                      ====> official image
    |   |
    |   +-- anacha/ng:1.6.0-rc.1-alpine (108 MB)          ====> optional ***
    |   `-- anacha/ng:1.6.5-alpine (108 MB)               ====> base images
    |       |
    |      (+)-- anacha/ng-testplat:1.6.5-alpine (285 MB) ====> this project ***
    |       |
    `-------'--- anacha/e2e-testplat:57 (181 MB)          ====> (Optional for other projects)
```

| Image                    | base-0 image    | base-1 image      | base-2 image |
| ------------------------ | --------------- | ----------------- | ------------ |
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
- eudev=3.2.2-r1
- dbus=1.10.14-r0
- dbus-x11=1.10.14-r0
- xvfb=1.19.3-r2
- chromium=57.0.2987.133-r0
- chromium-chromedriver=57.0.2987.133-r0
- firefox-esr=52.5.0-r0

## Source Repository

- [**cha-node/ng-testplat | Gitlab**](https://gitlab.com/cha-node/ng-testplat) - main repo.
- [anacpe9/ng-testplat | Github](https://github.com/anacpe9/ng-testplat) - mirror.
- [anacpe9/ng-testplat | Bitbucket](https://bitbucket.org/anacpe9/ng-testplat) - mirror.

## License

[MIT](LICENSE)