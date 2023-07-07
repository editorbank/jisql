./jisql \
  -driver "com.clickhouse.jdbc.ClickHouseDriver" -cstring "jdbc:clickhouse:http://localhost:8123/admin" -u admin -p admin \
  -c \; -input test.sql -trim -nohead $@
