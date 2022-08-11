## 조건문
- 조건문을 이용한 참 거짓판별을 하는 `if [ 조건문 ] then 실행문 if` 문법을 사용한다. 

## 일치
```
if [ $VAR1 -eq $VAR2 ]; then echo True; else echo False; fi
```
```
if [ $VAR1 = $VAR2 ]; then echo True; else echo False; fi
```
- 두 대상의 일치를 확인할 때 `if [ 조건문 ]`의 조건문에서는 일반 프로그래밍 언어의 `==` 대신에 `-qe` 또는 `=`를 사용한다.
- `=`는 $없이 변수를 선언할 때 기본 값을 대입하기 위해 사용하는 키워드이다. 이것이 조건문에서 사용될 때는 대입이 아닌 일치를 확인하는 키워드로 동작한다.

## 문자열 비교
### 일치
```
if [ $VAR1 = $VAR2 ]; then echo True; else echo False; fi

if [ $VAR1 = "$VAR2" ]; then echo True; else echo False; fi

if [ $VAR1 == $VAR2 ]; then echo True; else echo False; fi

if [ $VAR1 == "$VAR2" ]; then echo True; else echo False; fi
```
- 쉘 스크립트의 `if [ 조건문 ]`의 조건문에서 `=`과 `==`는 완전히 동일하다.


### 불일치
```
VAR1="abc"; VAR2="aba"

if [ $VAR1 != $VAR2 ]; then echo True; else echo False; fi
```
- 문자열의 불일치는 `!=`으로 확인한다. 불일치하므로 `then` 절이 실행된다.


### 비교
```
VAR1="abc"; VAR2="aba"

if [[ $VAR1 > $VAR2 ]]; then echo True; else echo False; fi

if [[ $VAR1 < $VAR2 ]]; then echo True; else echo False; fi
```
- `if [[ $VAR1 > $VAR2 ]]`의 경우 `abc`가 `aba`보다 문자열의 사전 순서에서 더 앞서므로 `then` 절이 실행된다. 
- `if [[ $VAR1 < $VAR2 ]]`의 경우 `abc`보다 `aba`가 문자열의 사전 순서에서 더 뒤이므로 `else` 절이 실행된다.

```
VAR1="abc"; VAR2="abz"

if [[ $VAR1 > $VAR2 ]]; then echo True; else echo False; fi

if [[ $VAR1 < $VAR2 ]]; then echo True; else echo False; fi
```
- `if [[ $VAR1 > $VAR2 ]]`의 경우 `abc`가 `aba`보다 문자열의 사전 순서에서 더 앞서므로 `abc` < `aba` 이므로 `else` 절이 실행된다. 
- `if [[ $VAR1 < $VAR2 ]]`의 경우 `abc`보다 `abz`가 문자열의 사전 순서에서 더 뒤이므로 `abc` > `abz` 이므로 `then` 절이 실행된다.

## 수 비교
### 크거나 같다 / 작거나 같다.
```
VAR1=10; VAR2=10

if [ $VAR1 -ge $VAR2 ]; then echo True; else echo False; fi
if [ $VAR1 -le $VAR2 ]; then echo True; else echo False; fi

VAR1=10; VAR2=20

if [ $VAR1 -ge $VAR2 ]; then echo True; else echo False; fi
if [ $VAR1 -le $VAR2 ]; then echo True; else echo False; fi
```

### 크다 / 작다
```
VAR1=10; VAR2=10

if [ $VAR1 -gt $VAR2 ]; then echo True; else echo False; fi
if [ $VAR1 -lt $VAR2 ]; then echo True; else echo False; fi

VAR1=10; VAR2=20

if [ $VAR1 -gt $VAR2 ]; then echo True; else echo False; fi
if [ $VAR1 -lt $VAR2 ]; then echo True; else echo False; fi
```