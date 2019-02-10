# this project was forked by _*[cha/nodetestplat](https://lab.er.co.th/cha/nodetestplat)*_ project

## docker-image dependencies graph

```text
+-- alpine:3.8 (4.41 MB)                                  ====> official image
    |
    +-- node:11.9.0-alpine (71.40 MB)                     ====> official image
    |   |
    |   +-- anacha/ng:7.2.0-beta.1-alpine (331 MB)        ====> optional ***
    |   `-- anacha/ng:7.3.1-alpine (331 MB)               ====> base images
    |       |
    |      (+)-- anacha/ng-testplat:7.3.1-alpine (285 MB) ====> this project ***
    |       |
    `-------'--- anacha/e2e-testplat:68-alpine (201 MB)   ====> (Optional for other projects)
```

| Image                    | base-0 image    | base-1 image        | base-2 image |
| ------------------------ | --------------- | ------------------- | ------------ |
| ng-testplat:7.3.1-alpine | ng:7.3.1-alpine | node:11.9.0-alpine  | alpine:3.8   |
| ng-testplat:7.3.0-alpine | ng:7.3.0-alpine | node:11.9.0-alpine  | alpine:3.8   |
| ng-testplat:7.2.3-alpine | ng:7.2.3-alpine | node:11.7.0-alpine  | alpine:3.8   |
| ng-testplat:7.2.2-alpine | ng:7.2.2-alpine | node:11.7.0-alpine  | alpine:3.8   |
| ng-testplat:7.2.1-alpine | ng:7.2.1-alpine | node:11.6.0-alpine  | alpine:3.8   |
| ng-testplat:7.2.0-alpine | ng:7.2.0-alpine | node:11.6.0-alpine  | alpine:3.8   |
| ng-testplat:6.2.9-alpine | ng:6.2.9-alpine | node:11.6.0-alpine  | alpine:3.8   |
| ng-testplat:7.1.4-alpine | ng:7.1.4-alpine | node:11.5.0-alpine  | alpine:3.8   |
| ng-testplat:7.1.3-alpine | ng:7.1.3-alpine | node:11.4.0-alpine  | alpine:3.8   |
| ng-testplat:7.1.2-alpine | ng:7.1.2-alpine | node:11.3.0-alpine  | alpine:3.8   |
| ng-testplat:7.1.1-alpine | ng:7.1.1-alpine | node:11.3.0-alpine  | alpine:3.8   |
| ng-testplat:7.1.0-alpine | ng:7.1.0-alpine | node:11.3.0-alpine  | alpine:3.8   |
| ng-testplat:6.2.8-alpine | ng:6.2.8-alpine | node:11.2.0-alpine  | alpine:3.8   |
| ng-testplat:7.0.6-alpine | ng:7.0.6-alpine | node:11.1.0-alpine  | alpine:3.8   |
| ng-testplat:6.2.7-alpine | ng:6.2.7-alpine | node:11.1.0-alpine  | alpine:3.8   |
| ng-testplat:7.0.5-alpine | ng:7.0.5-alpine | node:11.1.0-alpine  | alpine:3.8   |
| ng-testplat:7.0.4-alpine | ng:7.0.4-alpine | node:11.0.0-alpine  | alpine:3.8   |
| ng-testplat:7.0.3-alpine | ng:7.0.3-alpine | node:11.0.0-alpine  | alpine:3.8   |
| ng-testplat:7.0.2-alpine | ng:7.0.2-alpine | node:11.0.0-alpine  | alpine:3.8   |
| ng-testplat:6.2.6-alpine | ng:6.2.6-alpine | node:10.12.0-alpine | alpine:3.8   |
| ng-testplat:7.0.1-alpine | ng:7.0.1-alpine | node:10.12.0-alpine | alpine:3.8   |
| ng-testplat:6.2.5-alpine | ng:6.2.5-alpine | node:10.12.0-alpine | alpine:3.8   |
| ng-testplat:6.2.4-alpine | ng:6.2.4-alpine | node:10.11.0-alpine | alpine:3.8   |
| ng-testplat:6.2.3-alpine | ng:6.2.3-alpine | node:10.10.0-alpine | alpine:3.8   |
| ng-testplat:6.2.2-alpine | ng:6.2.2-alpine | node:10.10.0-alpine | alpine:3.8   |
| ng-testplat:6.2.1-alpine | ng:6.2.1-alpine | node:10.10.0-alpine | alpine:3.8   |
| ng-testplat:6.1.5-alpine | ng:6.1.5-alpine | node:10.9.0-alpine  | alpine:3.8   |
| ng-testplat:6.1.4-alpine | ng:6.1.4-alpine | node:10.9.0-alpine  | alpine:3.8   |
| ng-testplat:6.1.3-alpine | ng:6.1.3-alpine | node:10.8.0-alpine  | alpine:3.8   |
| ng-testplat:6.1.2-alpine | ng:6.1.2-alpine | node:10.8.0-alpine  | alpine:3.8   |
| ng-testplat:6.1.1-alpine | ng:6.1.1-alpine | node:10.7.0-alpine  | alpine:3.8   |
| ng-testplat:6.1.0-alpine | ng:6.1.0-alpine | node:10.7.0-alpine  | alpine:3.8   |
| ng-testplat:6.0.8-alpine | ng:6.0.8-alpine | node:10.4.0-alpine  | alpine:3.7   |
| ng-testplat:6.0.7-alpine | ng:6.0.7-alpine | node:10.3.0-alpine  | alpine:3.7   |
| ng-testplat:6.0.5-alpine | ng:6.0.5-alpine | node:10.2.1-alpine  | alpine:3.7   |
| ng-testplat:6.0.3-alpine | ng:6.0.3-alpine | node:10.1.0-alpine  | alpine:3.7   |
| ng-testplat:1.7.4-alpine | ng:1.7.4-alpine | node:9.10.1-alpine  | alpine:3.6   |
| ng-testplat:1.7.3-alpine | ng:1.7.3-alpine | node:9.7.1-alpine   | alpine:3.6   |
| ng-testplat:1.7.2-alpine | ng:1.7.2-alpine | node:9.6.1-alpine   | alpine:3.6   |
| ng-testplat:1.7.1-alpine | ng:1.7.1-alpine | node:9.6.1-alpine   | alpine:3.6   |
| ng-testplat:1.7.0-alpine | ng:1.7.0-alpine | node:9.5.0-alpine   | alpine:3.6   |
| ng-testplat:1.6.8-alpine | ng:1.6.8-alpine | node:9.5.0-alpine   | alpine:3.6   |
| ng-testplat:1.6.7-alpine | ng:1.6.7-alpine | node:9.5.0-alpine   | alpine:3.6   |
| ng-testplat:1.6.6-alpine | ng:1.6.6-alpine | node:9.4.0-alpine   | alpine:3.6   |
| ng-testplat:1.6.5-alpine | ng:1.6.5-alpine | node:9.4.0-alpine   | alpine:3.6   |
| ng-testplat:1.6.4-alpine | ng:1.6.4-alpine | node:9.4.0-alpine   | alpine:3.6   |
| ng-testplat:1.6.3-alpine | ng:1.6.3-alpine | node:9.3.0-alpine   | alpine:3.6   |
| ng-testplat:1.6.2-alpine | ng:1.6.2-alpine | node:9.3.0-alpine   | alpine:3.6   |
| ng-testplat:1.6.1-alpine | ng:1.6.1-alpine | node:9.3.0-alpine   | alpine:3.6   |
| ng-testplat:1.6.0-alpine | ng:1.6.0-alpine | node:9.2.0-alpine   | alpine:3.6   |
| ng-testplat:1.5.5-alpine | ng:1.5.5-alpine | node:9.2.0-alpine   | alpine:3.6   |
| ng-testplat:1.5.4-alpine | ng:1.5.4-alpine | node:9.2.0-alpine   | alpine:3.6   |
| ng-testplat:1.5.3-alpine | ng:1.5.3-alpine | node:9.2.0-alpine   | alpine:3.6   |
| ng-testplat:1.5.2-alpine | ng:1.5.2-alpine | node:9.2.0-alpine   | alpine:3.6   |
| ng-testplat:1.5.2-alpine | ng:1.5.0-alpine | node:9.0.0-alpine   | alpine:3.6   |

## e2e-testplat alpine packages

- ttf-freefont
- eudev=3.2.5-r2
- dbus=1.10.24-r1
- dbus-x11=1.10.24-r1
- xvfb=1.19.6-r3
- chromium=68.0.3440.75-r0
- chromium-chromedriver=68.0.3440.75-r0
- firefox-esr=52.9.0-r0

## Source Repository

- [**cha-node/ng-testplat | Gitlab**](https://gitlab.com/cha-node/ng-testplat) - main repo.
- [anacpe9/ng-testplat | Github](https://github.com/anacpe9/ng-testplat) - mirror.
- [anacpe9/ng-testplat | Bitbucket](https://bitbucket.org/anacpe9/ng-testplat) - mirror.

## License

[MIT](LICENSE)
