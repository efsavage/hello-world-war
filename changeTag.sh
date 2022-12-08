#!/bin/bash
sed "s/tagVersion/$1/g" deployment.yml > Deploy-pod.yml
