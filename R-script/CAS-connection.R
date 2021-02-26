library(swat)
conn <- swat::CAS('<team-name>.hackinsas.vectorlabs.sas.com/cas-shared-default-http', 443, protocol='https', username='viya_admin', password='<your-password>')
actionsets <- c('sampling', 'fedsql', 'decisionTree', 'neuralNet', 'percentile')

for(i in actionsets){
  loadActionSet(conn, i)
} 

cas.sessionProp.setSessOpt(conn, casLib="PUBLIC")
cas.table.caslibInfo(conn)
cas.table.tableInfo(conn)
cas.table.fetch(conn, table=(name="CARS"))
cas.session.endSession(conn)
