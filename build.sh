## Normal Build
go build -o ./build/rocat.exe
go build -o ./build/rocat-shrink.exe -ldflags "-s -w"

## Build Executable for Windows Amd64
set GOARCH=amd64
go build -o ./build/amd64/rocat-windows-amd64.exe
go build -o ./build/amd64/rocat-windows-amd64-shrink.exe -ldflags "-s -w"

## Build Executable for Windows Arm
set GOARCH=arm
go build -o ./build/arm/rocat-windows-arm.exe
go build -o ./build/arm/rocat-windows-arm-shrink.exe -ldflags "-s -w"

## Set Compile Settings for Linux
set GOOS=linux
set GOHOSTOS=linux

## Build Executable for Linux
set GOARCH=amd64
go build -o ./build/linux-amd64/rocat-linux-amd64
go build -o ./build/linux-amd64/rocat-windows-amd64-shrink -ldflags "-s -w"

## Build Executable for Linux
set GOARCH=arm
go build -o ./build/linux-arm/rocat-linux-arm
go build -o ./build/linux-arm/rocat-windows-arm-shrink -ldflags "-s -w"
