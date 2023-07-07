./jisql -driver "org.sqlite.JDBC" -cstring "jdbc:sqlite::memory:" -u "admin" -p "admin" -c \; -input test.sql -trim -nohead $@
