#!/bin/bash

adb shell pm uninstall -k --user 0 $1 && echo $1
