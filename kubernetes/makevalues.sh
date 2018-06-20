#!/bin/bash

# These are used for initialDelay values in values.yaml files
export TIMEOUT_EXTRASMALL=60   # default 5
export TIMEOUT_SMALL=60        # default 10
export TIMEOUT_MEDIUM=60
export TIMEOUT_LARGE=90
export TIMEOUT_EXTRALARGE=180
export TIMEOUT_EXTRAEXTRALARGE=450

for file in `find . -type f -name values.yaml.tmpl`
do
  cat $file | envsubst > `echo $file | sed 's/.tmpl//'`
done
