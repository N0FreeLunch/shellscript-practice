## 문자열 위치
```
OS_TYPE="Redhat Ununtu Fedora Debian"
```
### 위치 포인터
- 아래에서 숫자는 포인터이다.
- 포인터는 문자와 문자 사이 문자열의 앞뒤 맨 끝에 위치한다.
- 문자열 맨 앞의 위치포인터는 0번 위치포인터이고 문자열 맨 뒤의 위치포인터도 0번 위치포인터이다.
0`R` 1`e` 2`d` 3`h` 4`a` 5`t` 6` ` 7`U` 8`n` 9`u` 10 `n` 11`t` 12`u` 13` ` 14`F` 15`e` 16`d` 17`o` 18`r` 19`a` 20` ` 21`D` 22`e` 23`b` 24`i` 25`a` 26`n` 0


## 문법
```
${변수:시작위치포인터:끝위치포인터}
```
### 시작위치포인터
- 몇 번째 위치 포인터 부터 문자열을 읽어 들일지를 지정한다.
- 곧 몇 번째 인덱스의 문자열 부터 취득할지를 결정한다와 같은 의미이다.
- 시작위치포인터가 음수인 경우 문자열의 맨 마지막 위치를 0번 포인터로 본다. -1은 문자열의 가장 마지막 문자 앞에 위치한 위치 포인터가 된다.
- 위의 예에서 26번 위치포인터 `n`다음이 0번 위치포인터가 되며 26번 위치포인터가 -1번 위치포인터, 25번 위치포인터가 -2번 위치포인터가 된다.

### 끝위치포인터
- 문자열을 읽을 때 어디까지 읽을지 위치를 지정한다.
- 끝 위치 포인터의 0번 위치포인터는 시작 위치포인터가 지정된 위치이다.
- 끝 위치 포인터가 지정되지 않은 경우에는 시작 위치포인터 부터 문자열의 끝까지의 문자를 가져온다.
- 위치 포인터는 문자와 문자 사이에 위치하는 것이므로 끝 위치 포인터를 n으로 지정하면 시작 위치포인터 부터 n번 째 문자 뒤 n+1번째 문자 앞에 위치 포인터가 위치하게 된다. 시작 위치 포인터 부터 n번 위치 포인터까지의 문자를 취득한다.
- 위치 포인터가 음수인 경우, 문자열의 마지막 문다 다음 위치가 0번 위치포인터가 되며 -n번 위치 포인터를 지정하게 되면 문자열 뒤에서 n 개의 문자를 지난 곳을 위치 포인터로 하게 된다. 따라서 끝 위치 포인터를 지정하면 시작 위치 포인터로 부터 시작해서 뒤에서 n 번째 문자를 포함한 까지가 아닌, n-1번째 문자까지 선택하게 된다.

## 예제
### 시작위치인덱스
```
echo ${OS_TYPE:14}
```
- 문자열의 14번째 위치부터 문자열의 끝까지 출력하므로 `Fedora Debian`이 출력 됨

### 취득문자수
```
echo ${OS_TYPE:14:6}
```
- 문자열의 14번째 위치부터 6개의 문자가 출력 되므로 `Fedora`이 출력 됨


### 음수 인덱스의 경우
```
echo ${OS_TYPE:(-6)}
```
- `:-`가 변수가 null 또는 undefined인 경우 `:-` 뒤의 값을 출력 하는 문법이므로 이 문법과의 차이를 두기 위해 `-` 위치포인터의 경우 `(-n)`으로 표기한다.
- 문자열의 -6번째 위치 26, 25, 24, 23, 22, 21위치 부터 문자열의 끝까지이므로 `Debian`이 출력 됨

```
echo ${OS_TYPE:(-6):2}
```
- `-6`번 위치포인터 = 21번 위치포인터 부터 2개의 문자를 선택한다.

```
echo ${OS_TYPE:(-6):(-2)}
```
- `-6`번 위치포인터 = 21번 위치포인터부터 문자열의 끝까지를 기준으로 취득되는 문자열에서 `-2`번 위치 포인터 = 25번 위치포인터까지의 문자열을 취득한다. 따라서 출력 결과는 `Debi`