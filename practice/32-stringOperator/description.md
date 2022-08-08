## 연산자의 종류
- 문자열 연산자 (*)
- 비교 및 논리 연산자
- 디렉터리 연산자
- 파일 연산자 및 파일 비교 연산자

## null 체크
```
if [ -z $1 ]
then echo True
else echo False
fi
```
- `[ -z 변수 ]`는 변수가 null 또는 undefined인 경우 true로 평가 된다.

### 쉘 스크립트 커멘드에 옵션 인자가 없는 경우
```
bash nullCheck.sh 
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
bash nullCheck.sh ""
```
```
echo ${1:-undefined or null}
echo ${1-undefined}
```
- `$1`은 null임을 알 수 있다.
- 인자가 할당된 경우 False로 평가된다.

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
bash nullCheck.sh "test"
```

#### 결과
```
if [ -z $1 ]
then echo True
else echo False
fi
```
- `$1`은 비지 않은 문자열이고 `[ -z 변수 ]`는 null 또는 undefined인 일때 true를 반환하므로 false를 반환한다.
