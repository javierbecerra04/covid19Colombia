##Function to get the latest report
GettingLatestReport <- function(){
  ##Checking if the data directory is already created
  if(!file.exists("data")){dir.create("data")}
  ##Set the data directory the working directory
  setwd(".\\data")
  ##URL for the Data provided by the Colombian Government
  fileURL <- "https://www.datos.gov.co/api/views/gt2j-8ykr/rows.csv?accessType=DOWNLOAD"
  download.file(fileURL,destfile = "LocalReportData.csv")
  ##Update Date
  DownloadedDate <- date()
  setwd("..")
  return(DownloadedDate)
}