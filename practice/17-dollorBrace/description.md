## 연속된 문자열 내에서 변수의 구분
```
AUTH_URL="www.example.com/"
```

### 변수를 구분하지 못하는 경우
```
echo "http://$AUTH_URLlogin.html"
```
- 결과는 `http://.html`이다.
- 쉘 스크립트는 `$AUTH_URLlogin`까지를 하나의 변수로 파싱하였다.
- `AUTH_URLlogin` 변수는 정의하지 않았으므로 빈문자열로 출력된다.

### 변수를 구분할 수 있는 경우
```
echo "http://${AUTH_URL}login.html"
```
- 결과는 `http://www.example.com/login.html`이다.
- `${변수}`형태로 변수명이 어디서 부터 어디까지인지 명확히 지정하였다.
