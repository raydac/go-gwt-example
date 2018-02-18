![mvn-golang](https://raw.githubusercontent.com/raydac/go-gwt-example/master/frontend/src/main/webapp/images/logo.png)

# Introduction
Golang doesn't provide any GUI out of the box but we have a lot of 3rd party libraries unfortunately not many of them can be called as cross-platform ones. Fortunately we have WEB as modern cross-platform UI technology today.   
8 years ago I took a part in a big project which based its UI on [GWT](http://www.gwtproject.org/) and I decided that it would be funny to try to use [GWT](http://www.gwtproject.org/) as frontend part for a Golang application which plays backend role.
Of course it sounds vry heterogenic and usually it makes problems in build process but because GWT is Java based technology, it is possible to use [Maven](https://maven.apache.org/) to build both Java part and Golang part in the same project.
