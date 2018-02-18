![golang-gwt](https://raw.githubusercontent.com/raydac/go-gwt-example/master/frontend/src/main/webapp/images/logo.png)

# Introduction

Golang doesn't provide any GUI out of the box but we have a lot of 3rd party libraries unfortunately not many of them can be called as cross-platform ones. Fortunately we have WEB as modern cross-platform UI technology today.   
In 2010 I took a part in a big project which strongly used [GWT](http://www.gwtproject.org/) for UI and I decided that it would be funny to try to use [GWT](http://www.gwtproject.org/) as frontend part for a Golang application which plays backend role.
Of course it sounds very heterogenic and usually it makes problems in build process but because GWT is Java based technology, it is possible to use [Maven](https://maven.apache.org/) to build both Java part and Golang part in the same project.

# Requirements

You need installed __Java 1.8+__ and Maven 3.5+ on your machine. Because the project uses [mvn-golang-wrapper](https://github.com/raydac/mvn-golang) it will automatically download GoLang SDK.

# How to build
You can just clone the project and then execute `mvn` command inside cloned folder (the project has default goals `clean install`)

# Where to find result file
Afer build you can open `backend/bin` folder and there will be `backend-1.0.0-SNAPSHOT` or `backend-1.0.0-SNAPSHOT.exe` executable file which is the resulted file. If to execute such file then browser will be started and frontend part will be shown.  

![screenshot](https://raw.githubusercontent.com/raydac/go-gwt-example/master/screenshot.png)