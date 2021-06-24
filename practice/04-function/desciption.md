그냥 쉘 스크립트를 실행하면 다음과 같은 에러가 날 수 있다.
```
function.sh: 3: Syntax error: "(" unexpected
```


```
/bin/bash function.sh
```
또는 파일을 실행할 수 있게 만든 후 호출하자.
```
chmod +x function.sh
./function.sh
```


함수 내에 $1으로 첫번째 인자를 받아 온 것을 알 수 있다.
