Building
========

``` sh
git clone ...
cd gitbucket
./sbt.sh package
# takes a long time
# creates 'target/scala-2.11/gitbucket*.war' - `java -jar ...` doesn't work for this
./release/make-release-war.sh
# takes a long time, too
# creates 'target/scala-2.11/gitbucket*.war' - `java -jar ...` works OK for this
```

Applying A Pull Request
-----------------------

``` sh
wget https://github.com/takezoe/gitbucket/pull/540.diff -O contrib/pull-requests/540.diff
patch -p1 <contrib/pull-requests/540.diff
```
