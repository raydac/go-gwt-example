module mvn-golang-example-gui-gwt

        go 1.21.7

        require (
        github.com/jteeuwen/go-bindata v3.0.7+incompatible // indirect
        github.com/skratchdot/open-golang v0.0.0-20200116055534-eef842397966 // indirect
        )

        replace (
        mvn-golang-example-gui-gwt/frontend/bindata => "./frontend/bindata"
        )