#Main Script

#Download last local report
source("GettingLatestReport.R")
Update_Date <- GettingLatestReport()
read.csv(".\\Data\\LocalReportData.csv",encoding="UTF-8")
