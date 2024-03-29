## `&` 
- 커멘드라인의 작업에 대해 비동기적 실행으로 벡그라운드에 넘겨주는 역할을 한다.

## `$!`
- 최근에 실행된 백그라운드 명의 프로세스 아이디를 반환한다.

## `$$`
- 현재 실행되고 있는 프로세스 아이디를 반환한다.

## 스크립트 해석
```
bash recentShellBackgroundPID.sh
```
- 처음 실행된 쉘 스크립트

### 백그라운드 프로세스 실행
```
bash sample.sh &
```
- 두 번째로 실행된 쉘 스크립트
- 비동기로 실행된다.

### 최근 실행 된 프로세스 아이디
```
echo $!
```
- `sample.sh` 쉘 스크립트가 `$!`를 만든다.
- 최근 실행한 스크립트는 두 번째 스크립트이므로 현 시점에서 PID는 `220`

### 현재 실행되고 있는 프로세스 아이디
```
echo $$
```
- 첫 번째 스크립트에 들어 있는 위 스크립트를 실행하고 있는 프로세스의 PID이므로 첫 번째 쉡스크립트의 현 시점에서의 PID `219`
- 쉘 스크립트에서 비동기로 추가 실행한 프로세스의 PID 번호가 높아지는 것을 알 수 있다.