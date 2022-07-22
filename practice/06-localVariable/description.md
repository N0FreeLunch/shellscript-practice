```
language="korean"
```
- 전역변수

```
function learn() {
  local learn_language="English"
  echo "I am learning $learn_language"
}
```
- 로컬 스코프의 경우 local이라고 써 준다.

```
function print() {
  echo "I can speak $1"
}
```

```
learn
```
- learn 함수가 실행 되었을 때, 함수 내의 로컬 스코프 변수가 실행 되었다.

```
print $language
```

```
print $learn_language
```
- learn 함수 내부에서 로컬 스코프로 정의된 `$learn_language`는 스코프 밖 범위에서 정의 되지 않기 때문에 첫 번째 인자는 undefined가 들어가게 됨
- 따라서 결과는 `I can speak `가 나옴