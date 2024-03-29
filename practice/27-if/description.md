## 문법
```
if [ 첫 번째 조건식 ]
then
    수행문
elif [ 두 번째 조건식 ]
then
    수행문
else
    수행문
fi
```
- `if [ 첫 번째 조건식 ]` `if`와 `[` 사이는 반드시 한 칸의 스페이스로 띄워져 있다.
- `[`와 `첫 번째 조건식` 사이에는 반드시 한 칸의 스페이스로 띄워져 있다.
- `첫 번째 조건식`과 `]` 사이에는 반드시 한 칸의 스페이스로 띄워져 있다.
- `if [ 첫 번째 조건식 ]`는 한 행을 점유하므로 `then`은 반드시 개행하여 사용된다.
- 만약 `if [ 첫 번째 조건식 ]`와 `then`을 같은 행에 위치시키려고 한다면 `if [ 첫 번째 조건식 ]; then`과 같이 한 단위의 명령의 종료를 의미하는 세미콜론을 상용하여 표현할 수 있다.
- `then` 뒤의 수행문은 `then`과 같은 행에 위치할 수도 있고 다음 행 부터 위치할 수도 있다.
- `echo`는 스페이스로 여러 값을 받을 수 있기 때문에 뒤에 `else`를 위치시키기 위해서는 명령의 종료를 의미하는 세미콜론을 붙여 줘야 한다. 그렇지 않으면 `수행문; else`가 된다. `수행문; else`이다.
- `else`는 수행문 뒤에 올 수도 있고, 개행하여 적어줘도 된다.
- `else` 뒤의 수행문도 `else`와 같은 행에 위치할 수도 있고 다음 행 부터 위치할 수도 있다.
- `fi`는 한 행을 점유하므로 다른 문법과 같은 행에 적을 수 없다.
- 만약 `fi`를 수행문 바로 뒤에 위치시키고 싶다면 `수행문; fi`를 사용한다.

## 한줄로 표현하기
```
if [ $value1 = $value2 ]; then echo True; else echo False; fi
```

## 조건문
- 쉘스크립트에서 조건문은 프로그래밍 언어에서 `==` 또는 `===`과 달리 `=`하나만을 사용한다.
- 일반적인 프로그래밍 언어에서 조건문은 boolean 값을 반환하는 식으로 독립적으로 사용할 수 있는 것과 달리 쉘 스크립트에서 조건문은 if문 또는 for, while 문 등의 문법적 요소에 종속되어 있다. 조건문만 따로 사용할 수 없으며 조건문을 사용할 수 있는 특정 문법적인 요소에 포함되었을 때 조건문을 사용할 수 있다.

### 변수의 값을 정의하거나 변경할 때
- `변수=값`
- `${변수:=값}` 또는 `${변수=값}`

### 두 대상간의 값을 비교할 때
- `$변수 = 값`
- `$변수 = $변수`
- `값 = 값`

## 빈값 체크
### 문법
```
if [ -z 변수 ]
```
- 변수가 할당되어 있지 않거나 변수가 빈 값인 경우 참으로 평가한다.
- 변수가 null 또는 undefined인 경우 true로 평가 된다.

### 예제
#### 변수가 null인 경우
```
value=""
if [ -z $value ]
then echo True
else echo False
fi
```
- 빈값이면 참이므로 `echo True`가 실행된다.

#### 변수가 undefined인 경우
```
value=""
unset value
if [ -z $value ]
then echo True
else echo False
fi
```
- 빈값이면 참이므로 `echo False`가 실행된다.

## 비교 구문
### 문법 : 크다
```
if [ A -gt B ] 
```
- A, B는 변수 또는 값이다.
- A 가 B보다 크면 참이며 아니면 거짓이다.

### 문법 : 작다
```
if [ A -lt B ]
```
- A, B
- A는 B보다 작으면 참이며 아니면 거짓이다.

### 예제
```
value=5
if [ $value -gt  0 ] && [ $value -lt 10 ]
then echo True; else echo False;
fi
```
- `[ $value -gt  0 ]` 5는 0보타 크므로 참
- `[ $value -lt 10 ]` 5는 10 보다 작으므로 참
- `참 && 참`이므로 참이 되기 때문에 `then`이하가 실행된다.

## 다중조건
```
if [ 조건문1 ] && [ 조건문2 ]
```
```
if [ 조건문1 ] || [ 조건문2 ]
```




