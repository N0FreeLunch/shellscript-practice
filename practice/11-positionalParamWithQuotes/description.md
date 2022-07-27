## 쉘 스크립트 실행 옵션
```
sh quotes.sh Korean English "Japanses Chinese"
```

## `$*`
```
for language in $*
do
    echo "I can speak $language"
done
```
- `in $*`는 첫번째 옵션인 `Korean`를 배정하고 다음 옵션인 `English`를 배정하고 다음 옵션인 `"Japanses`를 배정하고 `Chinese"`를 배정한다.
- 이를 배정할 때 각각 옵션의 `"` 또는 `'`는 제거된다.
- 따라서 `in $*` 부분은 `in Korean English Japanses Chinese`이 된다.

## `"$*"`
```
for language in "$*"
do
    echo "I can speak $language"
done
```
- `$*`는 `Korean English Japanses Chinese`가 된다.
- ` "$*"`이므로 `in "Korean English Japanses Chinese"`가 된다.
- `""` 또는 `''`으로 묶였으므로 집합의 원소는 `Korean English Japanses Chinese` 하나이다.