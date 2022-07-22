```
language="korean"
```
- 전역 변수

```
function print () {
  echo "I can speak $language"
}
```
- 전역 변수를 내부에서 사용

```
print
```
- 함수의 인자가 없을 때는 함수명만을 사용하면 함수가 실행 됨

```
function change () {
  language="english"
}
```

```
change
```
- 로컬 스코프에서 전역 변수의 값을 바꿈

```
print
```
- print 함수 내부에서 사용된 전역 변수의 값이 change 함수에 의해서 바뀐 것을 확인할 수 있음