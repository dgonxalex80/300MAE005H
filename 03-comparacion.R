# 03-comparacion.R
# Comparación de variables con y sin NA

var_CNA = data[,c(1,5)]
var_SNA =data_SNA[,c(1,5)]

descr1 = summarytools::descr(var_CNA)
descr2 = summarytools::descr(var_SNA)