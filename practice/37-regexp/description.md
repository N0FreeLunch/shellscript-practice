## 정규표현식
- 정규표현식의 종류는 POSIX 형식과 PCRE가 존재한다.
- 일반적인 프로그래밍 언어에서 정규표현식은 PCRE를 사용하는 반면 쉘 스크립트에서는 POSIX라는 PCRE 보다 단순한 정규표현식을 사용한다.


## grep
```
grep 정규표현식 대상문자열
```
- 대상 문자열에서 정규 표현식에 맞는 표현이 매칭되면 매칭되는 문자열이 속한 열의 모든 문자열을 뽑아 낸다.

## `-E`
- 정규식 구문을 사용하기 전에 \-E 옵션을 붙여 주면 확장된 정규식 표현을 사용하겠다는 의미가 된다.

## 예제
```
grep 'C.U' expression.txt
```
- 첫 번째 글자가 C 세번째 글자가 U이며 두번째 글자가 임의의 문자에 해당하는 대상을 뽑는다.
- CPU가 매칭된 행이 반환된다.

```
grep 'C..e' expression.txt
```
- 첫 번째 글자가 C 두 세번째 글자는 아무거나 한 글자를 매칭하고 네 번째 글자를 e로 매칭되는 문자열을 뽑는다.

```
grep -E 'q[[:lower:]]*\?' expression.txt
```
- 첫 번째 글자가 q로 시작하며, 임의의 소문자 하나 또는 연속된 문자열이며 마지막에 ?가 오는 문자열이 매칭된 줄의 문자열을 뽑는다.
- `questions?`가 매칭된 줄이 반환된다.

```
grep -E 'q[[:lower:]]*\??' expression.txt
```
- 첫 번째 글자가 q로 시작하며, 임의의 소문자 하나 또는 연속된 문자열이을 매칭한다. 문자열의 마지막에 ?는 와도 되고 오지 않아도 된다.
- `questions`가 매칭된 줄이 반환된다.

```
grep -E '\-2+\-' expression.txt
```
- `-`로 시작하고 연속된 2가 나오며 그 다음 `-`가 나오는 문자열을 매칭한다.
- `-2222-`가 매칭된 줄이 반환된다.

```
grep '^#' expression.txt
```
- 문자열의 맨 처음이 `#`으로 시작되는 대상을 매칭한다.
- `grep`은 각 줄이 대상 문자열이기 때문에 각 줄의 맨 처음이 `#`인지 체크하여 매칭된 문자열이 속한 행을 반환한다.

```
grep -E '^[[:alpha:]]{5}' expression.txt
```
- 문자열의 맨 처음이 알파벳 5자인 대상을 매칭한다.
- `grep`은 각 줄이 대상 문자열이기 때문에 각 줄의 맨 처음이 영문자 5자로 시작하는지를 체크하여 매칭된 문자열이 속한 행을 반환한다.


```
grep -E '^[[:alpha:]]{5,}[[:space:]]' expression.txt
```
- 문자열의 맨 처음이 5자 이상의 연속된 알파벳이고 그 다음에 공백 문자를 하나 매칭한다.

```
grep -E '[[:alpha:]]{4,6}$' expression.txt
```
- 문자열 중에서 연속된 4~6자의 알파벳으로 구성된 대상을 매칭한다.

```
grep -E '[[:digit:]]{4,6}.$' expression.txt
```
-  문자열 중에서 연속된 4~6자의 숫자로 구성된 대상을 매칭한다.