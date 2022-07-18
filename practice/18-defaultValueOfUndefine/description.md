## unset
```
unset OS_TYPE
```
- unset을 사용하게 되면 변수 내의 값이 undefined가 된다.

### 변수가 null 또는 undefined인지 확인
```
${VARIABLE:-defaultValue}
```
- 위 표현은 변수에 값이 설정되지 않았거나 null인 경우 `defaultValue`를 출력하라는 표현이다.

### 변수가 undefined인지 확인
```
${VARIABLE-defaultValue}
```
- 위 표현은 변수에 값이 설정되지 않은 경우, 곧 undefined인 경우 `defaultValue`를 출력하라는 표현이다.

### 결과
- `unset`을 통해서 변수의 값을 없애서 undefined가 되었기 때문에 undefined 인 경우 디폴트 값을 사용하는 `${VARIABLE:-defaultValue}`와 `${VARIABLE-defaultValue}`의 디폴트 값인 `defaultValue`값이 나왔다.