## `-d 경로문자열`
- 대상이 디렉터리 경로를 나타내는 문자열이고 해당 결로가 디렉터리이면 참이다.
```
if [ -d $HOME ]; then echo True; else echo False; fi
```

## `-e 경로문자열`
- 대상이 디렉터리 경로를 나타내는 문자열이고 해당 경로가 파일이면 참이다.
```
if [ -e $HOME ]; then echo True; else echo False; fi
```

## `-f 경로문자열`
- 대상이 파일 경로를 나타내는 문자열이고 파일유형이면 참
```
if [ -f $FILE ]; then echo $FILE is file; else echo $FILE is not file; fi
```

## `-L 경로문자열`
- 대상이 파일 경로를 나타내는 문자열이고  심볼릭링크라면 참
```
if [ -L $FILE ]; then echo $FILE is symbolic link; else echo $FILE is not symbolic link; fi
```

## `-r 경로문자열`
- 대상이 파일 또는 디렉터리 경로를 나타내는 문자열이고 읽기 권한이 있으면 참 
```
if [ -r $FILE ]; then echo $FILE is readable; else echo $FILE is not readable; fi
```

## `-w 경로문자열`
- 대상이 파일 또는 디렉터리 경로를 나타내는 문자열이고 쓰기 권한이 있으면 참 
```
if [ -w $FILE ]; then echo $FILE is writeable; else echo $FILE is not writeable; fi
```

## `-x 경로문자열`
- 대상이 파일 또는 디렉터리 경로를 나타내는 문자열이고 실행 권한이 있으면 참 
```
if [ -x $FILE ]; then echo $FILE is executeable; else echo $FILE is not executeable; fi
```

## `-s 경로문자열`
- 대상이 파일 또는 디렉터리 경로를 나태나는 문자열이고 파일 사이즈가 0보다 크면 참
```
if [ -s $FILE ]; then echo $FILE is not zero byte; else echo $FILE is zero byte; fi
```

## `-O 경로문자열`
- 대상이 파일 또는 디렉터리 경로를 나태나는 문자열이고 파일 또는 디렉터리의 소유자가 스크립트를 실행하는 유저와 동일하면 참
```
if [ -O $FILE ]; then echo $FILE file owner is matched to current user; else echo $FILE file owner not matched to user; fi
```

## `-G 경로문자열`
- 대상이 파일 또는 디렉터리 경로를 나태나는 문자열이고 파일의 소유 그룹이 스크립트를 실행하는 유저가 속한 그룹과 동일하면 참
```
if [ -G $FILE ]; then echo $FILE file owner is matched to current group; else echo $FILE file owner is not matched to current group; fi
```