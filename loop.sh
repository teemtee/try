#!/bin/bash

components="grep httpd lftp"

tmp=$(mktemp -d)
pushd $tmp

for component in $components; do
    git clone --depth 1 "https://src.fedoraproject.org/tests/$component"
    pushd $component
    tmt run discover -v
    popd
done

popd
rm -rf $tmp
