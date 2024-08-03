# Variables
APP_NAME=.

# Targets
.PHONY: all setup run-windows run-macos run-linux build-windows build-macos build-linux clean

all: setup run-windows run-macos run-linux

setup:
	flutter channel stable
	flutter upgrade
	flutter config --enable-windows-desktop
	flutter config --enable-macos-desktop
	flutter config --enable-linux-desktop
	flutter doctor

create:
	flutter create $(APP_NAME)

run-windows:
	flutter run -d windows

run-macos:
	flutter run -d macos

run-linux:
	flutter run -d linux

build-windows:
	flutter build windows

build-macos:
	flutter build macos

build-linux:
	flutter build linux

clean:
	flutter clean
