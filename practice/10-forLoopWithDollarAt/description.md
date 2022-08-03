## 쉘 스크립트 실행 옵션
```
bash for.sh Korean English "Japanses Chinese"
```
```
bash for.sh Korean English 'Japanses Chinese'
```
- 스페이스로 구분된 문자열을 하나의 옵션으로 묶을 때는 `""`를 사용할 수도 있지만 `''`을 사용해도 된다.

## `$@`
```
echo $@
echo $*
```
- 결과는 둘 다 동일하게 `Korean English Japanses Chinese`이다.
- 커멘드 라인의 실행 옵션들을 스페이스 문자로 구분한 문자열로 받는다.
- `$*`가 커멘드라인 옵션 인자를 하나씩 받는 것과 달리 `$@`는 커멘드라인 옵션 인자 모두를 하나의 문자열로 받는다.
- `$*`는 `'Korean' 'English' 'Japanses' 'Chinese'`으로 판별 되는 것에 반해 `$@`는 `Korean English 'Japanses Chinese'`으로 판별된다.

##  `""` 또는 `''`의 판별
```
echo a b 'c' 'd'
```
- 결과는 `a b c d`이다. `""` 또는 `''`가 제거 되었다는 것을 알 수 있다.

```
echo "'a' 'b' 'c' 'd'"
```
- 결과는 `'a' 'b' 'c' 'd'`이다. 바깥에 `""` 또는 `''`를 씌우는 것으로 내부의 `""` 또는 `''`가 남게 되었다.

## 반복
```
for language in $@
do
  echo "I can speak $language"
done
```
- 위의 코드에서 `in $@` 부분은 커멘드라인 옵션에서 `""` 또는 `''`을 제거한 `in Korean English Japanses Chinese`과 동일하다.
- `""` 또는 `''`가 제거되었기 때문에 이를 제거하지 않기 위해서는 바깥에 `""` 또는 `''`를 씌워줘야 한다. 따라서 `"$@"` 표현을 사용해야 한다.

```
for language in "$@"
do
  echo "I can speak $language"
done
```
- "$@"는 ""으로 감싸주었기 때문에 `in Korean English 'Japanses Chinese'`가 되며 반복문은 `Korean` `English` `'Japanses Chinese'` 단위로 루프를 돌린다.

