curl https://www.xigole.com/software/jisql/build/jisql-2.0.11.tar.gz -o -|tar zxf -

[ ! -d drv ] && mkdir drv
cd drv
curl -O https://repo1.maven.org/maven2/com/clickhouse/clickhouse-jdbc/0.4.6/clickhouse-jdbc-0.4.6.jar
curl -O https://repo1.maven.org/maven2/com/clickhouse/org.roaringbitmap/1.9.1/org.roaringbitmap-1.9.1.jar
curl -O https://repo1.maven.org/maven2/com/clickhouse/io.grpc/1.9.1/io.grpc-1.9.1.jar
curl -O https://repo1.maven.org/maven2/com/clickhouse/org.apache.commons.compress/1.9.1/org.apache.commons.compress-1.9.1.jar
curl -O https://repo1.maven.org/maven2/com/github/luben/zstd-jni/1.5.5-2/zstd-jni-1.5.5-2.jar
curl -O https://repo1.maven.org/maven2/org/lz4/lz4-java/1.8.0/lz4-java-1.8.0.jar

curl -O https://repo1.maven.org/maven2/org/postgresql/postgresql/42.6.0/postgresql-42.6.0.jar
curl -O https://repo1.maven.org/maven2/org/checkerframework/checker-qual/3.31.0/checker-qual-3.31.0.jar

#curl -O https://github.com/curtisbridges/SqliteTest/blob/master/libs/sqlitejdbc-v056.jar
curl -O https://repo1.maven.org/maven2/org/xerial/sqlite-jdbc/3.7.2/sqlite-jdbc-3.7.2.jar
