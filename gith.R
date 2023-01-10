# validate the list of driver that R recognizes using odbc::odbcListDrivers()

library(odbc)
library(tidyverse)


DBI::dbConnect(
  odbc::odbc(), 
  driver = "Simba Athena ODBC Driver", 
  Schema = "default",
  AwsRegion = "us-east-1",
  AuthenticationType = "Default Credentials",
  S3OutputLocation = "s3://..../"
) -> con


#household <- dbGetQuery(con, sql("SELECT * FROM db.name"))

#dbListTables(con)

#den<-dbGetQuery(con, "SELECT * FROM table") %>% as_tibble()

den3<- dbGetQuery(con, "Select  columns From table Where .... limit 10") %>% as_tibble()
