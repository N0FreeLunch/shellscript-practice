## 논리 연산자
- AND 또는 OR 연산을 표현할 때 `if [ 조건표현식 ]`의 조건표현식에서 `&&` `||` 연산자를 사용하기 위해서는 논리 연산자의 연산 대상들이 `[]`으로 묶여 있거나 전체 조건 표현식이 `[[ 논리연산자가 포함된 조건표현식 ]]`으로 묶여야 한다.

### Bash Conditional Expressions
- `if [ 조건표현식 ]`의 조건표현식에서는 Bash Conditional Expressions을 사용한다.
- Bash Conditional Expressions으로 사용 가능한 문법은 다음을 참고한다. : https://www.gnu.org/software/bash/manual/bash.html#Bash-Conditional-Expressions
- `[[ 조건 표현식 ]]`의 경우 좀 더 제한된 베쉬 조건 표현을 사용할 수 있다. 문자열 분리, 파일명 확장에 관한 표현식은 `[[ 조건 표현식 ]]`에서 사용할 수 없고, 틸트(~)  확장, 파라메터와 변수 확장, 산술 표현, 명령대체, 프로세스대체, 인용부호 제거 등이 적용되는 배쉬 조건 표현이 적용된다.

#### 산술 연산
- 배쉬 조건 표현의 산술 표현에 해당하는 것이 `&&` 와 `||`의 논리연산이다.
- 산술 연산은 `if [ 조건표현식 ]`에서는 사용할 수 없고 `[[ 조건 표현식 ]]`에만 적용된다.
- 따라서 논리 연산을 사용하기 위해서는 `[[ 조건 표현식 ]]`을 사용해야 한다.

## 논리 연산자의 연산 대상이 `[]`으로 묶인 경우
### 문법
```
if [ 조건표현식 ] 논리연산자 [ 조건표현식 ] 논리연산자 [ 조건표현식 ] ...
```

### 예제
```
if [ $VAR1 -lt $VAR2 ] && [ $VAR2 -gt $VAR3 ]
then echo True;
else echo False;
fi

if [ $VAR1 -lt $VAR2 ] || [ $VAR2 -gt $VAR3 ]
then echo True;
else echo False;
fi
```
- 조건 표현식의 `&&` 또는 `||` 연산자의 연산 대상을 `[]`로 묶어 주었다. `[ $VAR1 -lt $VAR2] ` 또는 `[ $VAR2 -gt $VAR3 ]`


## 전체 조건식 표현이 `[[]]`으로 감싸진 경우
### 문법
```
if [[ 조건표현식 ]]
```

### 예제
```
if [[ $VAR1 -lt $VAR2 && $VAR2 -gt $VAR3 ]]
then echo True;
else echo False;
fi

if [[ $VAR1 -lt $VAR2 && $VAR2 -gt $VAR3 ]]
then echo True
else echo False
fi
```