## 문법
### 처음 나오는 매치되는 문자열 한 단위를 교체
```
${변수/일치문자열/바꿀문자열}
```
- 바꿀 문자열이 없다면 `${변수/일치문자열}` 빈 문자열로 교체한다.

### 반복적으로 매치되는 문자열 한 단위를 교체
```
${변수//일치문자열/바꿀문자열}
```
- 바꿀 문자열이 없다면 `${변수//일치문자열}` 빈 문자열로 교체한다.

### \#일치문자열
- 일치문자열의 앞에 `#`을 붙여주면 일치문자열은 대상 문자열의 맨 앞에 위치해야 한다.

### \%일치문자열
- 일치- 일치문자열의 앞에 `%`을 붙여주면 일치문자열은 대상 문자열의 맨 뒤에 위치해야 한다.

## 예제
```
OS_TYPE="Redhat Linux Ubuntu Linux Fedora Linux"
```

```
echo ${OS_TYPE/Linux/OS}
```
- 대상 문자열의 처음 나오는 `Linux`를 `OS`으로 변경한 결과를 출력하므로 `edhat OS Ubuntu Linux Fedora Linux`가 된다.

```
echo ${OS_TYPE//Linux/OS}
```
- 대상 문자열의 모든 `Linux`를 `OS`으로 변경한 결과를 출력하므로 `Redhat OS Ubuntu OS Fedora OS`가 된다.

```
echo ${OS_TYPE/Linux}
```
- 대상 문자열의 처음 나오는 `Linux`를 `` 빈 문자열로 변경한 결과를 출력하므로 `Redhat Ubuntu Linux Fedora Linux`가 된다.

```
echo ${OS_TYPE//Linux}
```
- 대상 문자열의 모든 `Linux`를 `` 빈 문자열로 변경한 결과를 출력하므로 `Redhat Ubuntu Fedora`가 된다.

```
echo ${OS_TYPE/#Redhat/Unknown}
```
- 대상 문자열의 처음 위치하는 문자열이 `Redhat`에 매칭되면 해당 문자열을 `Unknown`으로 바꾼다. 따라서 `Redhat Linux Ubuntu Linux Fedora Linux`가 된다.

```
echo ${OS_TYPE/%Linux/Unknown}
```
- 대상 문자열의 마지막에 위치하는 문자열이 `Linux`에 매칭되면 해당 문자열을 `Unknown`으로 바꾼다. 따라서 `Redhat Linux Ubuntu Linux Fedora Unknown`가 된다.