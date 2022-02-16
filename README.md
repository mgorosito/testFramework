# mgg-challenge

Test framework for api testing.

### Clone project:
```sh
$ git clone https://github.com/mgorosito/testFramework.git
```

### Tests package:
```sh
.../src/test/java/
```

### Properties location:
```sh
...src/main/resources/properties
```

### Execution:
```sh
$ mvn clean test -Dgroups=regression -Denvironment=qa
```
or you can run test class after passing VM options "-Denvironment=qa" through intellij configuration.

### Report location:
```sh
.../reports/mgg-challenge-report.html
```

### Execute using docker:
Build image:
```sh
$ sudo docker build -t mgg-challenge-image:V-0.1 -f ./Dockerfile .
```
Execute image:
```sh
$ sudo docker run -e GROUPS="regression" -e ENVIRONMENT="qa" mgg-challenge-image:V-0.1
```

### CheckStyle coding:
```sh
$ mvn checkstyle:check
```