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

```
function globalChange() {
  language="japanese"
}
```
- 글로벌 변수를 로컬 스코프에서 바꿔주었다.

```
function localCahnge() {
  local language="chinese"
}
```
- 글로벌 변수와 변수 이름은 같지만 로컬 스코프의 변수를 바꿔주었다.

```
globalChange
```
- 글로벌 변수의 값을 바꿨을 때

```
print $language
```
- `I can speak korean`에서 `I can speak japanese`로 바뀌었다.

```
localCahnge
```
- 로컬 변수의 값을 바꿨을 때

```
print $language
```
- `I can speak japanese`에서 `I can speak japanese`으로 바뀌지 않았다.