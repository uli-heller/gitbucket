#!/bin/sh
for bs in ../project/build.scala "${D}/project/build.scala" project/build.scala; do
  if [ -s "${bs}" ]; then  
    BUILD_SCALA="${bs}"
    break
  fi
done

export GITBUCKET_VERSION=`cat "${BUILD_SCALA}" | grep 'val Version' | cut -d \" -f 2`
echo "GITBUCKET_VERSION: $GITBUCKET_VERSION"
