## 쉘 스크립트에서 변수 선언
```
language = "korean"
```
- 위와 같이 띄어 쓰기가 있으면 안 된다.
```
language="korean"
```
- 위와 같이 붙여서 써야 한다.
- 프로그래밍 언어와 달리 const, var 등의 키워드를 사용하지 않는다.

## 문자열에 변수 출력하기
- 문자열 상 `""`에서 변수를 표현하는 방법은 `$변수명` 표현을 사용한다.
```
echo "I can speak $language"
```