# shellscript-practice


## Install atom editor EOL foramt changer
```
https://atom.io/packages/line-ending-converter
```

## docker setting
### build
```
docker compose build
```
### run container
```
docker compose up -d
```

## access to container
### sh (default)
```
docker compose exec app sh
```

## bash (require installing bash shell in Dockefile)
*Run this command*
```
docker compose exec app bash
```

## Reference
- \[Book\] 처음 배우는 쉘 스크립트
- [bash official reference](http://www.gnu.org/software/bash/manual/bash.html)
- [The GNU C Library](https://www.gnu.org/software/libc/manual/html_node)
