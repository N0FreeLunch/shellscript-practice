## 쉘 스크립트에 따른 실행
- 쉘 프로그램의 종류에 따라 쉘 스크립트의 문법이 달라서 실행이 되지 않을 수 있다.
- 이 경우, 쉘 스크립트를 실행하는 프로그램을 바꿔준다.
```
function.sh: 3: Syntax error: "(" unexpected
```

## 실행 쉘 프로그램 변경하기
```
/bin/bash function.sh
```
- 직접 쉘 프로그램을 지정해서 해당 쉘로 실행한다.

### 디폴트 배쉬 프로그램을 통해 실행한다.
```
chmod +x function.sh
./function.sh
```

## 함수의 실행
- 일반 프로그래밍 언어와 같이 print() 방식으로 실행 되는 것이 아니라 실행을 뜻하는 기호 `()`가 없다는 것에 주의
- `print 인자` 방식으로 함수에 인자를 넣는다.
```
print "I can speak Korean"
```

## 매개변수
```
function print() {
  echo $1
}
```
- 함수를 정의할 때 () 안에 매개변수를 넣지 않으며 첫 번째 매개변수는 $1으로 두번째 매개변수는 $2으로 사용된다.


## 문법 유연성
```
function printEng
( ) 
{
  echo $1
}
```
- 이렇게 `()` `{}`는 별도로 사용할 수 있는 문법적인 유연성이 있다.
- 함수의 매개변수는 () 안에 매개 변수로 사용할 로컬 변수를 넣지 않고 $1과 같은 방식을 사용하기 때문에 `(`와 `)`사이 개행이 있어서는 안 된다.