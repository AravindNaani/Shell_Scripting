#!/bin/bash

git -v

echo "Git : $?"

docker --version

echo "docker : $?"

kuberctl version

echo "kubectl : $?"