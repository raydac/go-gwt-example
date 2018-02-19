![golang-gwt](https://raw.githubusercontent.com/raydac/go-gwt-example/master/frontend/src/main/webapp/images/logo.png)

# Introduction

Golang doesn't provide any GUI out of the box but we have a lot of 3rd party libraries unfortunately not many of them can be called as cross-platform ones. Fortunately we have WEB as modern cross-platform UI technology today.   
In 2010 I took a part in a big project which strongly used [GWT](http://www.gwtproject.org/) for UI and I decided that it would be funny to try to use [GWT](http://www.gwtproject.org/) as frontend part for a Golang application which plays backend role.
Of course it sounds very heterogenic and usually it makes problems in build process but because GWT is Java based technology, it is possible to use [Maven](https://maven.apache.org/) to build both Java part and Golang part in the same project.   

# Project structure
The Project contains two parts
 * __frontend__ part written in GWT, all stuff related to the front end part is situated in the `frontend` folder
 * __backend__ part written in Golang, al stuff related to the backend part is situated in the `backend` folder

## Frontend part

The Part doesn't have any magic and implemented as a single web age aplication which shows text field and button. If enter some text into the text field and then press the send button then the entered text will be sent to the Golang part and the returned result will be shown just under the text field. Also the timer label situated just under the text feld shows the current time gotten from the Goang part. The Compiled part takes a bit more space tha it could be ecause I ave trned off GWT obfuscation to provide better diagnostic information. All communication with the backend part is based on GET and POST requests, there is not any web-socket use.

## Backend part

It is a just simple Golang application implements web server. Just after start it finds first free port and use it to start inside web server, after that it opens the link to the inside main web page in default system browser. If it doesn't get requests from its frontend part during 5 seconds then it guesses that its frontend part has been closed and end execution.

# Requirements

You need pre-installed __[Java SDK 1.8+](http://www.oracle.com/technetwork/java/javase/downloads/index.html)__ and [Maven 3.0.3+](https://maven.apache.org/) on your machine. Because the project uses [mvn-golang-wrapper](https://github.com/raydac/mvn-golang) it will automatically download GoLang SDK.

# How to build
You can just clone the project through `git clone https://github.com/raydac/go-gwt-example.git` and then execute `mvn` command inside cloned folder (the project has default goals `clean install`)

# Where is the executable file?
After build you can open `backend/bin` folder and there will be `backend-1.0.0-SNAPSHOT` or `backend-1.0.0-SNAPSHOT.exe` executable file which is the resulted file. If to execute such file then browser will be started and frontend part will be shown.  

![screenshot](https://raw.githubusercontent.com/raydac/go-gwt-example/master/screenshot.png)