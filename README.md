# docker-ionic

EN-US
----
Building environment for android apps on Ionic platform 3 and 4

Example Ionic3:

```
docker container run -it --rm -v /home/dukitan/project/ionic:/opt/app  dukitan/ionic:3.20 /bin/sh
```


After entering the interactive container login you can type:


```
ionic start project-ionic3 tabs --v3 --no-link --no-interactive
cd project-ionic3
npm i
ionic cordova build android
```
Result:
```
BUILD SUCCESSFUL in 1m 49s
42 actionable tasks: 42 executed
Built the following apk(s): 
	/opt/app/project-ionic/platforms/android/app/build/outputs/apk/debug/app-debug.apk
```

----

Example Ionic 4:

```
docker container run -it --rm -v /home/dukitan/project/ionic:/opt/app  dukitan/ionic:4.10 /bin/sh
```


After entering the interactive container login you can type:


```
ionic start project-ionic tabs  --no-link --no-interactive
cd project-ionic
npm i
ionic cordova build android
```

Result:
```
BUILD SUCCESSFUL in 1m 49s
42 actionable tasks: 42 executed
Built the following apk(s): 
	/opt/app/project-ionic/platforms/android/app/build/outputs/apk/debug/app-debug.apk
```

PT-BR
----
Ambiente de construção para aplicativos android na plataforma Ionic  3 e 4

Exemplo Ionic 3:

```
docker container run -it --rm -v /home/dukitan/projeto/ionic:/opt/app  dukitan/ionic:3.20 /bin/sh
```
Após entrar no login interativo do container você pode digitar:

```
ionic start project-ionic3 tabs --v3 --no-link --no-interactive
cd project-ionic3
npm i
ionic cordova build android
```
Resultado:
```
BUILD SUCCESSFUL in 1m 49s
42 actionable tasks: 42 executed
Built the following apk(s): 
	/opt/app/project-ionic/platforms/android/app/build/outputs/apk/debug/app-debug.apk
```

----

Exemplo Ionic 4:

```
docker container run -it --rm -v /home/dukitan/projeto/ionic:/opt/app  dukitan/ionic:4.10 /bin/sh
```
Após entrar no login interativo do container você pode digitar:

```
ionic start project-ionic tabs  --no-link --no-interactive
cd project-ionic
npm i
ionic cordova build android
```

Resultado:
```
BUILD SUCCESSFUL in 1m 49s
42 actionable tasks: 42 executed
Built the following apk(s): 
	/opt/app/project-ionic/platforms/android/app/build/outputs/apk/debug/app-debug.apk
```
