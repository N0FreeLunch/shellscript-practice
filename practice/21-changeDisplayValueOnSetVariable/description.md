## 문법
```
${변수:+덮어씌울값}
```
- 변수에 값이 비어있지 않고 정의된 경우, 덮어씌울 값으로 변수를 치환한다.

## 세미콜론
- `변수:`라는 기호가 변수의 값이 비어있거나 정의여부를 묻는 것이다.
- `변수:` `-`는 없을 때를 대체 출력, `=`는 대입, `+`는 있을 때 대체 출력의 의미를 가진다.
- 곧, `:`와 결합하여 `:-`는 변수의 값이 null 또는 undefined 인 경우 대체 출력, `:=`는 변수의 값이 null 또는 undefined인 경우 대입, `:+`는 변수의 값이 null 또는 undefined가 아닌 경우 대체 출력의 의미를 가진다.

## 예제 1
```
OS_TYPE="ubuntu"
```

```
echo ${OS_TYPE:+redhat}
```
- `OS_TYPE`에는 값이 정의 되어 있다. `:+`에 의해 null 또는 undefined가 아닌 경우, 곧 값이 정의되어 있는 경우 `redhat`으로 대체 출력한다는 의미를 가진다.
- 단순히 대체 출력을 하기 때문에 OS_TYPE 변수에 `redhat`이 대입되지는 않았다.

```
echo ${OS_TYPE}
```
- 변수에 새로운 값이 대입되지 않았으므로 기존 값인 `ubuntu`가 출력 됨

```
echo ${OS_TYPE+redhat}
```
- `변수+`의 의미는 변수의 값이 undefined가 아닌 경우 대체출력 되므로 현재 변수는 `ubuntu`이므로 대체출력되어 `redhat`이 출력 된다.

```
echo ${OS_TYPE}
```
- 대체출력 되고 대입되지 않았으므로 OS_TYPE은 기존값인 `ubuntu` 그대로 출력된다.


## 예제2
```
OS_TYPE=""
```
- 변수에 빈 문자열 값을 넣었다. 쉘스크립트에서는 null 상태이다.

```
echo ${OS_TYPE:+redhat}
```
- 변수에 값이 null 이므로 null이 아닐 때 redhat을 출력하는 위의 문법은 대체 출력 하지 않으므로 빈 값 그대로 출력하여 빈 줄을 출력한다.

```
echo ${OS_TYPE}
```
- 대체 출력 명령어이므로 변수는 변경되지 않았으므로 빈 줄을 출력한다.

```
echo ${OS_TYPE+redhat}
```
- 변수의 값이 null인데 `+`는 undefined가 아닐 경우 대체 출력한다. 따라서 undefined가 아닌 null이므로 대체출력하여 `redhat`이 출력된다.

```
echo ${OS_TYPE}
```
- 앞서 대체출력이 되었으나 대입이 아니므로 변수는 바뀌지 않았다. 따라서 null을 출력하여 빈 줄이 출력 됨

## 예제3
```
OS_TYPE=""
unset OS_TYPE
```
- `unset` 명령어에 의해 `OS_TYPE`의 값은 undefined가 된다.
- 곧 OS_TYPE은 선언되어 있지 않은 상태가 된다.

```
echo ${OS_TYPE:+redhat}
```
- `:+`는 null 또는 undefined가 아닐 때 대체한다. 선언된 변수가 없어서 undefined이므로 대체되지 않아서 undefined를 출력하므로 빈 줄이 출력된다.

```
echo ${OS_TYPE}
```
- 대입하지 않기 때문에 undefined라서 빈 줄이 출력된다.

```
echo ${OS_TYPE+redhat}
```
- `+`는 undefined가 아닐 때 대체출력한다. 변수는 선언되지 않은 상태인 undefined 이므로 대체출력 하지 않는다. 따라서 없는 값인 빈 줄을 출력한다.

```
echo ${OS_TYPE}
```
- 대입 하지 않았기 때문에 undefined를 출력하므로 빈 줄이 출력된다.


