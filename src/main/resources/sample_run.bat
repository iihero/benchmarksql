:: this is only the demo for who want to run on windows platform

java -cp .\;..\BenchmarkSQL.jar;..\lib\* -Dprop=ase.properties -DcommandFile=.\sql.ase\tableCreates.sql -Djava.security.egd=file;\dev\.\urandom com.github.pgsqlio.benchmarksql.jdbc.ExecJDBC

java -cp .\;..\BenchmarkSQL.jar;..\lib\* -Dprop=ase.properties -DcommandFile=.\sql.ase\tableCreates.sql -Djava.security.egd=file;\dev\.\urandom com.github.pgsqlio.benchmarksql.loader.LoadData

java -cp ./;../BenchmarkSQL.jar;../lib/* -Dprop=ase.properties -DrunID=2 -Djava.security.egd=file;/dev/./urandom com.github.pgsqlio.benchmarksql.jtpcc.jTPCC


:: java -cp ./;../BenchmarkSQL.jar;../lib/* -Dprop=ase.properties -DcommandFile=./sql.common/tableDrops.sql -Djava.security.egd=file;/dev/./urandom com.github.pgsqlio.benchmarksql.jdbc.ExecJDBC


:: java -cp ./;../BenchmarkSQL.jar;../lib/* -Dprop=ase.properties -DcommandFile=./sql.common/storedProcedureDrops.sql -Djava.security.egd=file;/dev/./urandom com.github.pgsqlio.benchmarksql.jdbc.ExecJDBC