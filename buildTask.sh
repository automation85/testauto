#!/bin/bash

export GRADLE_USER_HOME="/opt/gradle/gradle-4.5.1/bin"
export PATH=${PATH}:${GRADLE_USER_HOME}
gradle clean test