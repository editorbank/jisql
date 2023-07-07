java -cp jisql-2.0.11/lib/jisql-2.0.11.jar:jisql-2.0.11/lib/javacsv.jar:jisql-2.0.11/lib/jopt-simple-3.2.jar\
:drv/postgresql-42.6.0.jar\
:drv/checker-qual-3.31.0.jar\
  com.xigole.util.sql.Jisql \
  -driver "org.postgresql.Driver" -cstring "jdbc:postgresql://localhost:5432/admin" -u admin -p admin \
  -c \; -input test.sql -trim -nohead $@
