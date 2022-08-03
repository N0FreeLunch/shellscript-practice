## 쉘 스크립트 실행 명령어
- `sh`나 `bash` 등의 터미널 명령어를 사용해서 쉘 스크립트 파일을 실행하는 경우
```
bash params.sh param1 param2 param3
```

```
echo "This shell script name is $0"
```
- `This shell script name is params.sh`으로 sh 명령어 다음에 첫 번째 인자가 파일명이다.

## 실행 권한으로 바로 실행할 때
```
chmod u+x params.sh
```
- 쉘 스크립트 파일에 실행 권한을 주고

```
./params.sh param1 param2 param3
```
- 파일 그 자체를 경로 방식으로 실행하는 경우

```
This shell script name is ./params.sh
```
- `This shell script name is ./params.sh`로 첫 번째 인자가 파일을 직접 실행할 때 사용한 파일 경로를 의미한다는 것을 알 수 있다.

```
echo "I can speak $1 and $2"
```
- `$1`부터는 `$n`의 표현으로 쉘 스크립트 파일에 넣은 옵션을 순서대로 넣는다.

```
echo "This shell script parameters are $*"
```
- `This shell script parameters are param1 param2 param3`
- `$*`의 경우 모든 옵션 파라메터를 출력한다.
- 첫 번째 인자인 파일명 또는 파일 경로를 제외한 쉘 스크립트를 실행할 때의 옵션 값을 모두 출력한다.
- 실행 옵션이 여럿인 경우 각 옵션은 ` `로 구분한 문자열로 보낸다.

```
echo "This shell script parameters are $0"
```
- `This shell script parameters are params.sh`


```
echo "This parameter count is $#"
```
- `This parameter count is 3`
- `$#`는 옵션 파라메터의 갯수를 의미한다. `$0`는 파라메터 갯수에 포함하지 않는다.