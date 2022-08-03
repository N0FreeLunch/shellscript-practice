## 커멘드 실행
```
bash for.sh
```

## 순회 리스트의 echo 평가
```
for num in 1 2 3
do
    echo $num
done
```

```
numbers="1 2 3"

for num in $numbers
do
    echo $num;
done
```
- 위 두 for문은 같다.
- `in $numbers`는 내부적으로 echo로 평가되는 듯 하다. echo로 평가되면서 문자열을 감싸는 `"`가 사라지고 `in 1 2 3`으로 되는 것으로 보임

```
for file in ./*
do
    echo $file;
done
```
- 커멘드라인에서 `echo ./*`을 사용하면 `./description.md ./for.sh`가 된다. 곧 띄어쓰기로 구분된 문자열을 넣는 것과 동일한 표현이 된다.

```
for num in {1..5}
do
    echo $num;
done
```
- `bash -c "echo {1..5}"`를 실행하면 `1 2 3 4 5`가 나온다. bash 쉘에서 `{n..m}` 표현을 `echo`로 평가하면  n과 m사이의 연속된 정수를 띄어쓰기로 구분한 문자열이 반환된다. 띄어쓰기로 구분된 문자열의 각 원소를 순회한다.