#!/usr/bin/env bash

user=${BINTRAY_USER}
pass=${BINTRAY_KEY}
[ -z "$user" ] && read -p "Bintray username: " user
[ -z "key" ] && read -p "Bintray key: " -s pass
echo ''

./gradlew artifactoryPublish -x test -x build -PBINTRAY_USER=${user} -PBINTRAY_KEY=${key}
