## 쉘 스크립트 실행 옵션
```
sh for.sh Korean English "Japanses Chinese"
```
```
sh for.sh Korean English 'Japanses Chinese'
```
- 결과는 `Korean English Japanses Chinese`이다.
- `""` 또는 `''`이 사라진 것을 알 수 있다. `""` 또는 `''`는 커멘드 라인 옵션에서 코드를 한 단위로 묶는 역할을 한다.

## 루프
```
for value in a b c 'd e'
do
  echo "I can speak $value"
done
```
- `for 원소 in 대상 집합`에 한 줄을 할당한다.
- `do`에 한 줄을 할당하고 `done`에 한줄을 할당한다. `do`와 `done` 사이의 쉘 스크립트 코드가 반복된다.
- `대상 집합`의 각 원소는 스페이스로 구분된 문자열이다.
- 원소가 공백이 포함된 문자 단위라면 `''` 또는 `""`으로 문자열을 감싼다.

## 인자를 받은 루프
```
for language in $*
do
  echo "I can speak $language"
done
```
- `$*`는 모든 커멘드라인 명령어의 옵션 인자를 스페이스로 구분한 문자열로 표기한다. 따라서 `in $*` 부분은 `in Korean English 'Japanses' 'Chinese'`과 동일하다.
- `$*`는 인자를 받을 때 여러 인자를 한 단위로 받는 것이 아니라, 공백으로 구분된 방식으로 받는다.
```
sh for.sh Korean English "Japanses Chinese"
```
- 위에서 인자는 `Korean` `English` `"Japanses` `Chinese"`가 된다. 따라서 `in Korean English "Japanses Chinese"`이 아닌 `in Korean English 'Japanses' 'Chinese'`과 같은 방식으로 작동한다.
- 커멘드라인의 실행 옵션 인자 각각을 따로 받지 않고 한 꺼번에 받을 수 있는 방식으로 받아야 `''` 또는 `""`으로 스페이스로 띄워진 인자를 한 단위로 묶을 수 있다. 이는 `$@`에서 확인하자.