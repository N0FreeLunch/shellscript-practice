## 연산자의 종류
- 문자열 연산자 (*)
- 비교 및 논리 연산자
- 디렉터리 연산자
- 파일 연산자 및 파일 비교 연산자

## null 또는 undefined 체크
```
if [ -z $1 ]
then echo True
else echo False
fi
```
- `[ -z 변수 ]`는 변수가 null 또는 undefined인 경우 true로 평가 된다.

### 쉘 스크립트 커멘드에 옵션 인자가 없는 경우
```
bash checkNullOrUndefined.sh 
```
```
echo ${1:-undefined or null}
echo ${1-undefined}
```
- `$1`은 undefined임을 알 수 있다.

#### 결과
```
if [ -z $1 ]
then echo True
else echo False
fi
```
- `$1`은 undefined이고`[ -z 변수 ]`는 null 또는 undefined인 일때 true를 반환하므로 true를 반환한다.

### 쉘 스크립트 커멘드에 옵션 인자가 null인 경우
```
bash checkNullOrUndefined.sh ""
```
```
echo ${1:-undefined or null}
echo ${1-undefined}
```
- `$1`은 null임을 알 수 있다.

#### 결과
```
if [ -z $1 ]
then echo True
else echo False
fi
```
- `$1`은 null이고 `[ -z 변수 ]`는 null 또는 undefined인 일때 true를 반환하므로 true를 반환한다.

### 쉘 스크립트 커멘드에 옵션 인자가 비어있지 않은 문자열인 경우
```
bash checkNullOrUndefined.sh "test"
```

#### 결과
```
if [ -z $1 ]
then echo True
else echo False
fi
```
- `$1`은 비지 않은 문자열이고 `[ -z 변수 ]`는 null 또는 undefined인 일때 true를 반환하므로 false를 반환한다.


## 빈 문자열이 아닌지 체크
- 쉘 스크립트에서 빈 문자열 `""`은 null로 취급된다. 그런데 경우에 따라 null과 빈 문자열이 다를 수 있다.
- `[ -z 변수 ]`가 null 또는 undefined이면 true를 반환하는 것과 달리 `[ -n 대상 ]`의 조건식에서는 대상이 빈 문자열인 경우에만 false를 반환한다.
- `[ -n 대상 ]`에서 빈문자열 형식이 아닌 나머지 모든 대상은 true로 판별된다.
- 변수의 위치에 null 타입이 오면 빈 문자열 형식을 만족하지 않기 때문에 false를 반환하지 않고 true를 반환한다.
- 곧 빈 문자열이 아니면 true를 반환한다.

### 빈 문자열의 경우
```
if [ -n "" ]
then echo empty string
else echo not empty string
fi
```
- 빈 문자열이 조건문에 들어가 있다. 따라서 false를 반환한다. 결과는 `not empty string`이다.

### 문자열의 길이가 존재하는 경우
```
if [ -n "''" ]
then echo empty string
else echo not empty string
fi
```
- 문자열을 표시하는 `""` 내부에 `''`이란 문자열이 들어 있다. 문자열의 길이는 2이므로 빈 문자열이 아니므로 true를 반환한다. 결과는 `empty string`이다.

#### 유사 예제
```
if [ -n "test" ]
then echo empty string
else echo not empty string
fi
```
- 길이가 0인 문자열이 아니므로 true를 반환한다. 따라서 결과는 `empty string`이다.

### undefined 판단
```
if [ -n ]
then echo not exist
else echo exist and defined
fi
```
- `[ -n 변수 ]`의 조건문은 변수가 빈 문자열인지 체크하고 false를 반환한다. 그런데 변수가 없는 상태이므로 undefined인 상태이다. 따라서 true를 반환한다. 결과는 `not exist`이다.

#### 유사 예제
```
if [ -n undefined ]
then echo undefined
else echo defined
fi
```
- 위에서 `undefined`는 변수를 선언할 때 `undefined=없음`을 한 것과 같은 효과를 가져 undefined 상태이다. `""`으로 감싸여진 형식이 아니므로 `-n` 뒤의 문자 형식으로서 문자열은 아니란 것이다.
- 빈 문자열이 아니므로 true를 반환하여 결과는 `undefined`가 된다.

### `""`으로 감싼 대상
```
if [ -n "$undefined" ]
then echo undefined
else echo zero length
fi
```
- `$undefined`의 결과는 아무것도 없다. `"$undefined"`는 인터프리트가 실행되면서 `""`으로 평가한다. 따라서 `-n` 뒤의 빈 문자열 형식이 되기 때문에 조건문은 false가 되어 결과는 `zero length`이다.

### `$1`으로 인자를 받는 경우
```
if [ -n $1 ]
then echo \$1 is non zero length
else echo \$1 is zero length
fi
```
#### 인자가 없을 때
```
bash emptyString.sh
```
- 문자열이 정의되지 않는 경우이므로 조건문은 `[ -n ]`가 되어 true를 반환한다. 결과는 `$1 is non zero length`이다.

#### 인자가 있을 때
```
bash emptyString.sh test
```
- `$1`은 test이다. 조건문은 `[ -n test ]`와 같다. 변수 위치가 `""`으로 감싸진 문자열이 아니며 `test=없음`의 의미와 동일하다. 따라서 undefined 타입이 온 것과 동일하다. 따라서 조건문은 빈 문자열이 아니므로 true를 반환해 결과는 `$1 is non zero length`이다.

#### 인자가 null 일때
```
bash emptyString.sh ""
```
- `$1`은 null인데 조건문은 빈 문자열만 받는다. 따라서 `[ -n  ]`과 같은 상황이다. 변수 위치가 존재하지 않으므로 빈 문자열 아니라서 true가 되어 결과는 `$1 is non zero length`이다.

### `"$1"`으로 인자를 받는 경우
```
bash emptyString.sh
```
- `$1`은 정의되지 않았다. 조건문은 `[ -n "$1" ]`에서 $1이 아무것도 나타내지 않으므로 `[ -n "" ]`이 된다. 따라서 `-n` 뒤에 빈 문자열이 오는 형태가 된다. 조건문이 false로 평가되어 else 절이 실행된다. 결과는 `"$1" is zero length`가 된다.

#### 인자가 있을 때
```
bash emptyString.sh test
```
- 조건문은 `[ -n "$1" ]`에서 `$1`이 `test`이므로 `[ -n "test" ]`가 된다. 빈 문자열이 아닌 들어 있는 문자열이므로 조건문이 true로 평가되어 then 절이 실행된다. 결과는 `"$1" is non zero length`이다.

#### 인자가 null 일때
```
bash emptyString.sh ""
```
- `""`이 인자로 들어가게 되면 `$1`은 null 타입이 된다. null 타입이 문자열 내에서 평가될 때는 아무것도 없는 문자가 되므로 `"$1"`는 `""`와 동일하다. 따라서 빈 문자열 형태가 되고 `[ -n "$1" ]`는 `[ -n "" ]`이 되어 else 절이 실행된다. 결과는 `"$1" is zero length`이다.