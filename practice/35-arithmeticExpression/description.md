## 산술표현식
- 산술 표현식은 `(( 산술식 ))`의 표현으로 이중 괄호를 사용하여 감싼 식에 적용된다.
- 산술식에서는 다음과 같은 표현을 사용할 수 있다. https://www.gnu.org/software/bash/manual/bash.html#Shell-Arithmetic
- `if [ 조건표현식 ]`의 조건 표현식에서는 쉘 스크립트의 조건 표현식 내에서 정해진 몇 가지의 연산자를 사용할 수 있는 것에 반해, 산술 표현식에서는 프로그래밍 언어에서 자주 사용하는 기본적인 연산자들을 활용할 수 있다.

## 예제
```
VAR1=10; VAR2=20

if (( $VAR1 > $VAR2 )); then echo True; else echo False; fi

if (( $VAR1 >= $VAR2 )); then echo True; else echo Fasle; fi

if (( $VAR1 < $VAR2 )); then echo True; else echo False; fi

if (( $VAR1 <= $VAR2 )); then echo False; else echo False; fi
```