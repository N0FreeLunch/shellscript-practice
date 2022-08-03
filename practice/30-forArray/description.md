## 배열의 선언
```
array=("apple" "banana" "pineapple")
```
- 일반 프로그래밍 언어에서 배열을 `["apple", "banana", "pineapple"]`로 선언하는 것과 달리, 스페이스로 구분된 문자열 전체를 괄호로 묶은 형태이다.

## echo로 출력이 안 됨
```
bash -c 'array=("apple" "banana" "pineapple") && echo $array'
```

```
bash -c 'array=("apple" "banana" "pineapple") && echo ${array}'
```
- 배열은 echo를 사용해서 표현되지 않는다. 배열에 echo를 사용하면 첫 번째 원소만 출력된다. `apple`이다.

## for range에서 배열 사용 불가
```
for fruit in ${array}
do
    echo $fruit;
done
```
- `${array}`는 배열이지만 `in` 뒤에 위치할 때는 echo로 평가되므로 `in apple`과 동일한 표현이 된다. 이 경우 원소는 `apple` 하나이므로 for 문의 순회도 1회 일어난다.

## 조건문이 있는 for문 문법
```
for(조건문)
do
    실행문
done    
```
- for 문 안에 들어가는 조건문은 `선언정의; 순회조건정의; 변수변화정의`로 구성되어 있다. 일반 프로그래밍 언어에서 `for(선언정의; 순회조건정의; 변수변화정의)`와 달리 쉘 스크립트에서는 조건문을 괄호로 감싸서 넣어줘야 한다. 따라서 `for((선언정의; 순회조건정의; 변수변화정의))`의 형태로 사용해야 한다.
- 일반 프로그래밍 문법 `for(조건문){1회 순회 실행문}`인 것에 반해 `do 실행문; done`의 형태로 사용한다.

### 조건문이 있는 for문에서 배열 사용하기
```
for((num=0; num<3; num++))
do
    echo ${array[$num]};
done
```

### 한줄로 조건문이 있는 for문 사용하기
```
for((num=0;num<3; num++)) do echo ${array[$num]}; done
```