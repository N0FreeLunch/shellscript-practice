## 문법
```
case 변수 in
    값1)
    실행문
    ;;
    값2)
    실행문
    ;;
    값3)
    실행문
    ;;
esac
```
- 일반적인 프로그래밍 언어에서 `switch (변수)`에 해당하는 부분이 `case 변수`가 된다. switch문을 여는 `{}`에 해당하는 것이 `in`이며 `{}`안에서 변수의 값을 받는 `case  변수:`가  `값)`이 된다. 또한 switch문 내부의 브레이크를 의미하는 것이 `;;`이다. `}`로 스위치 문을 닫는 것 대신 `esac`를 사용하여 switch문을 닫는다.
- 일반 프로그래밍 언어에서 case문을 만족하지 못하여 `default:`로 표현되는 부분은 `*)`로 표기한다. `*`으로 나머지 매칭되는 모든 값이란 의미가 되며 나머지 모든 경우에 대해 실행문을 실행하므로 `default:`와 동일한 기능을 갖는다.


## 커멘드라인 명령
```
bash switchCase.sh start
```
- `start)`에 매칭되므로 `echo "Start"`를 실행한다.

```
bash switchCase.sh start1
```
- `start)`에 매칭되지 않고, `*)`에 매칭되므로 `echo "Plaease input sub command"`를 실행한다.

```
bash switchCase.sh stop
```
- `stop)`에 매칭되므로 `echo "Stop"`를 실행한다.

```
bash switchCase.sh stop1
```
- `stop)`에 매칭되지 않고, `*)`에 매칭되므로 `echo "Plaease input sub command"`를 실행한다.

```
bash switchCase.sh help
```
- `help*)`에 매칭되므로 `echo "Help"`를 실행한다.

```
bash switchCase.sh help1
```
- `help*)`에 매칭되므로 `echo "Help"`를 실핸한다.

```
bash switchCase.sh other
```
- `*)`에 매칭되므로 `echo "Plaease input sub command"`를 실행한다.