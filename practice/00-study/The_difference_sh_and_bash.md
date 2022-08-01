## sh
### 쉘 스트립트 실행 프로그램 위치
```
/bin/sh
```

### 명령
```
sh
```

## bash
### 쉘 스트립트 실행 프로그램 위치
```
/bin/bash
```

### 명령
```
bash
```

##  "Hash-Bang" or "She-Bang"
```
#!/bin/bash
```
- 쉘 스크립트의 첫 줄에 `#!`라고 쓰는 것을 해시뱅, 쉬뱅이라고 부른다.
- `#! /bin/bash`띄어쓰기가 들어가서는 안 되고 붙여서 `#!/bin/bash`로 사용해야 bash 명령어가 제대로 사용되니 주의하자.
- 스크립트를 실행 파일로 실행하는 경우 리눅스 OS는 이 부분을 읽고 스크립트를 해석하고 실행할 쉘 프로그램을 선택한다.
- 예를 들어 `/bin/sh helloworld.sh`는 sh 쉘로 실행한다는 의미이며 `./helloworld.sh`는 내부의 해시뱅에 정의한 쉘 프로그램으로 실행한다.

## 
- 쉘 스크립트를 실행할 때 실행 프로그램으로 실행할 경우

## sh와 bash의 차이
- bash 쉘과 sh쉘은 지원하는 문법이 조금 다를 수 있다.
- ubuntu에서는 기본적으로 sh명령어가 디폴트로 동작해서 sh 베쉴 쉘 스크립트를 따로 설치하고 기본 쉘로 연결하지 않는다면 bash 쉘 스크립트가 제대로 동작하지 않을 수 있다.

## About Dash shell
- https://wiki.ubuntu.com/DashAsBinSh

## Reference
- https://stackoverflow.com/questions/8967902/why-do-you-need-to-put-bin-bash-at-the-beginning-of-a-script-file
