library(tidyverse)
library(rgbif)
library(ggplot2)
library(maps)
library(taxize)


#Busqueda del taxon en el mundo####
occ_search(scientificName="Neopisosoma") 
neopisosoma = occ_search(scientificName = "Neopisosoma", 
                        return = "data")
neop_occ1 = as.data.frame(neopisosoma[["data"]])

getwd()
setwd("C:/Users/juanf/OneDrive - PUJ Cali/2022/2022-2/CSM")
getwd()

write.csv(neop_occ, file="registros neopisosoma.csv", row.names=FALSE) #OFFLINE

#Crustacea taxonKey=229#
#Mollusca taxonKey=52#
#Actinoperygii taxonKey=204#
#Echinodermata taxonKey=50#


#Busqueda en el poligono del PNN Uramba
occ_search(geometry="POLYGON(( -77.37 3.92,  -77.33 3.92,  -77.33 3.89 , -77.37 3.89 ,  -77.37 3.92))")
uramba <- occ_search(geometry="POLYGON(( -77.37 3.92,  -77.33 3.92,  -77.33 3.89 , -77.37 3.89 ,  -77.37 3.92))", scientificName="Tetraodontiformes")
uramba_occ <- as.data.frame(neopisosoma[["data"]])


occ_search(scientificName="Dacnis", geometry="POLYGON(( -77.37 3.92,  -77.33 3.92,  -77.33 3.89 , -77.37 3.89 ,  -77.37 3.92))")

occ_search(geometry="POLYGON((-75.8555 10.1678,-75.6258 10.2448,-75.7214 9.8146,-75.9282 9.6664,-75.8555 10.1678))")

rosario <- occ_search(geometry="POLYGON((-75.8555 10.1678,-75.6258 10.2448,-75.7214 9.8146,
                      -75.9282 9.6664,-75.8555 10.1678))", scientificName="Mollusca")
#Mollusca taxonKey 52
#Arthropoda taxonKey 54

rosario <- as.data.frame(rosario[["data"]])


occ_search(geometry="POLYGON((-77.38359 6.05072, -77.27352 6.08608, -77.15478 6.13578, -77.16612 5.91497, -77.29053 5.87595, -77.38559 5.87061, -77.38359 6.05072))")
utria <- occ_search(geometry="POLYGON((-77.38359 6.05072, -77.27352 6.08608, -77.15478 6.13578, -77.16612 5.91497, -77.29053 5.87595, -77.38559 5.87061, -77.38359 6.05072))")
utria <- occ_search(taxonKey=229,geometry="POLYGON((-77.38359 6.05072, -77.27352 6.08608, -77.15478 6.13578, -77.16612 5.91497, -77.29053 5.87595, -77.38559 5.87061, -77.38359 6.05072))")
utria <- as.data.frame(utria[["data"]])


porci <- occ_search(geometry="POLYGON((-75.8555 10.1678,-75.6258 10.2448,-75.7214 9.8146,-75.9282 9.6664,
           -75.8555 10.1678))", scientificName="Porcellanidae")

porci <- as.data.frame(porci[["data"]])

malpelo <- occ_search(taxonKey=229, geometry="POLYGON((-82.1056 4.9873, -80.3669 4.9873, -80.4059 3.5088, 
                      -82.1056 3.4828, -82.1056 4.9873))")

occ_search(scientificName="Chordata", geometry='POLYGON((-74.85 11.14,-74.74 10.84,-74.33 10.97,
           -74.85 11.14))',limit=1000)
 
  
occ_search(geometry="POLYGON((-74.8500 11.1453,-74.3460 11.1095,-74.3384 10.9642,
           -74.5628 10.8808,-74.8533 11.0466,-74.8500 11.1453))")
salamanca <- occ_search(taxonKey=204, geometry="POLYGON((-74.8500 11.1453,-74.3460 11.1095,-74.3384 10.9642,
           -74.5628 10.8808,-74.8533 11.0466,-74.8500 11.1453))")
salamanca <- as.data.frame(salamanca[["data"]])

peces_vps <- occ_search(scientificName="Actinopterygii", geometry='POLYGON((-74.32 11.15 ,-74.33 10.86,
           -74.85 10.88,-74.85 11.14,-74.32 11.15))', limit=1000)
peces_vps <- as.data.frame(peces_vps[["data"]])

occ_search(scientificName="Vertebrata", geometry='POLYGON((-74.32 11.15 ,-74.33 10.86,
           -74.85 10.88,-74.85 11.14,-74.32 11.15))', limit=1000)


#Busqueda del taxon para pais####
neopisosoma_CO <- occ_search(scientificName = "Neopisosoma", country="CO",
                             return = "data")
neopisosoma_CO <- as.data.frame(neopisosoma_CO[["data"]])


#Busqueda de la especie####
neop_bi <- occ_search(scientificName = "Neopisosoma bicapillatum", 
                             return = "data")
neop_bi <- as.data.frame(neop_bi[["data"]])


#Busqueda por localidad####
occ_search(scientificName="Neopisosoma", locality="Santa Marta")

#Busqueda con coordenadas geograficas####
occ_search(geometry='POLYGON((8.03 -82.9,7 -77,1 -79,3 81,8.03 -82.9))')

occ_search(scientificName="Decapoda", geometry='POLYGON((8.03 -82.9,7 -77,1 -79,3 81,8.03 -82.9))')

occ_search(taxonKey=1130, geometry='POLYGON((8.03 -82.9,7 -77,1 -79,3 81,8.03 -82.9))')


occ_search(scientificName="Decapoda", geometry='POLYGON((8.03 -82.9,7 -77,1 -79,3 81,8.03 -82.9))')

cmar1 <- occ_search(scientificName="Decapoda", geometry='POLYGON((8.03 -82.9,7 -77,1 -79,3 81,8.03 -82.9))', 
           limit=1000)

cmar2 <- occ_search(scientificName="Decapoda", geometry='POLYGON((8.03 -82.9,7 -77,1 -79,3 81,8.03 -82.9))', 
                    limit=1000, start=1001)

cmar_occ1 = as.data.frame(cmar1[["data"]])
cmar_occ2 = as.data.frame(cmar2[["data"]])

#Cos-Pan 8.03, -82.87
#Pan-Col 7.22, -77.88
#Col-Ecu 1.64, -79.02
#Malpelo 3.99, -81.59
 

#Utria
occ_search(geometry='POLYGON((5.8 -77.1,5.8 -77.4,6.1 -77.4,6.1 -77.1,5.8 -77.1))')
occ_search(locality = "Utria")
occ_search(locality = "utria")

#Gorgona
occ_search(locality="Gorgona")
gorgona <- occ_search(locality="Gorgona", limit=607, return = "data")
gorgona_occ <- as.data.frame(gorgona[["data"]])

occ_search(geometry='POLYGON((-77.52 4.1, -77.52 3.85, -77.22 3.85, -77.22 4.1, -77.52 4.1))')
gorgona_geom <- occ_search(geometry='POLYGON((-77.52 4.1, -77.52 3.85, -77.22 3.85, -77.22 4.1, -77.52 4.1))', return = "data")
gorgona_geom_occ <- as.data.frame(gorgona_geom[["data"]])


library(plyr)
neop_count<- ddply(neop_occ, .(name, countryCode), summarize, occur=length(countryCode))
ggplot(neop_count, aes(countryCode, occur)) + geom_boxplot()

write.csv(neop_count, file="neopisosoma registros por pais.csv", row.names=FALSE)


#Neopisosoma species data####
occ_search(scientificName="Neopisosoma")
neop_occ <- occ_search(scientificName = "Neopisosoma", return = "data")
neop_occ <- as.data.frame(neop_occ[["data"]])

write.csv(neop_occ, file="neopisosoma occurrences.csv", row.names=FALSE)

ggplot(neop_occ, aes(x=countryCode, y=scientificName)) + geom_point()
ggplot(neop_occ, aes(x=countryCode, y=year)) + geom_boxplot()
ggplot(neop_occ, aes(x=countryCode, y=year)) + geom_point(aes(color=countryCode))
ggplot(neop_occ, aes(x=countryCode, y=year)) + geom_point(aes(color=scientificName))

ggplot(neop_occ, aes(x=countryCode, y=year))
ggplot(neop_occ, aes(x=countryCode, y=year))+ geom_boxplot()
ggplot(neop_occ, aes(x=countryCode, y=year)) + geom_point()
ggplot(neop_occ, aes(x=countryCode, y=year)) + geom_point(alpha=0.2, color="tomato") + geom_boxplot()

neopisosoma_sp <- neop_occ %>% group_by(scientificName)
neopisosoma_sp

ggplot(neop_occ, aes(x=countryCode, y=year)) + geom_point() + facet_wrap(~scientificName)

neo_selection <- neop_occ %>% filter(name =="Neopisosoma angustifrons" | 
                                       name=="Neopisosoma neglectum" | 
                                       name=="Neopisosoma dohenyi")

neobycolunm <- neop_occ %>% select(scientificName, countryCode, decimalLatitude, decimalLongitude)


#Using taxize####

get_wormsid("Pocillopora capitata")
get_wormsid(c("Aetobatus", "Diodon"))
as.wormsid(get_wormsid(c('Pocillopora', 'Diodon')))

x <- get_wormsid('Pocillopra capitata')


gnr_resolve(sci="neopisosoma mexican") #check spelling
neomx <- gnr_resolve(sci="neopisosoma mexinanum") #check spelling

neo_class <- classification("neopisosoma mexicanum", db="worms")
neo_class <- as.data.frame.list(neo_class) #list to data frame
neo_class

id2name(289246, db = "worms")

worms_downstream(id = 125732, downto="species")
worms_downstream(id = 51, downto="class")


#getting all spp of the genus####
downstream("Neopisosoma", downto="species", db="gbif")
downstream("Neopisosoma", downto="species", db="worms")
downstream("Neopisosoma", downto="species", db="itis")
downstream("Neopisosoma", downto="species", db="bold")
#getting all genera of the family
downstream("Porcellanidae", downto="genus", db="gbif")

#Sinonimos####
synonyms("Alpheus colombiensis", db="worms")
alp_col <- synonyms("Alpheus colombiensis", db="worms")
alp_col <- as.data.frame.list(alp_col) #list to data frame
alp_col


#Panulirus species data####
occ_search(scientificName="Panulirus")
panulirus_occ <- occ_search(scientificName="Panulirus", limit=1000)
panulirus_df <- as.data.frame(panulirus_occ[["data"]])
panulirus_selection <- panulirus_occ %>% filter(name =="Panulirus gracilis" | 
                                            name=="Panulirus guttatus" | 
                                            name=="Panulirus penicullatus")

write.csv(panulirus_selection, file="panulirus occurrences.csv", row.names=FALSE)


###Valentina - Ophiactis
occ_search(scientificName="Ophiactis")
ophiactis <- occ_search(scientificName="Ophiactis", limit=10000)
ophiactis_df <- as.data.frame(ophiactis[["data"]])
write.csv(ophiactis_df, file="ophiactis_records.csv", row.names=FALSE)


ophiactis_selection <- ophiactis_df%>% filter(name =="Ophiactis quinqueradia" | 
                                                  name=="Ophiactis rubropoda" | 
                                                  name=="Ophiactis savignyi")

write.csv(ophiactis_selection, file="ophiactis_records.csv", row.names=FALSE)


#Cos-Pan 8.03, -82.87
#Pan-Col 7.22, -77.88
#Col-Ecu 1.64, -79.02
#Malpelo 3.99, -81.59
#Isla Coco 5.5, -87


#Alpheus colombiensis data####
occ_search(scientificName="Alpheus colombiensis") #Nombre aceptado
occ_search(scientificName="Alpheus hamus") #Un sinonimo


#Existe la especie, pero no hay aun registros en las bases de datos####
occ_search(scientificName="Petrolisthes lazarus")
pet_laz <- classification("Petrolisthes lazarus", db="worms")
pet_laz <- as.data.frame.list(pet_laz) #list to data frame


#getting all spp of the genus####
downstream("Neopisosoma", downto="species", db="gbif")
downstream("Neopisosoma", downto="species", db="worms")


occ_search(scientificName="Panulirus")
panulirus_occ <- occ_search(scientificName="Panulirus")
panulirus_occ <- as.data.frame(neopisosoma[["data"]])
panulirus_occ1 <- occ_search(scientificName="Panulirus", limit=1000)
panulirus_occ2 <- occ_search(scientificName="Panulirus", limit=1000, start= 1000)
panulirus_occ3 <- occ_search(scientificName="Panulirus", limit=1000, start= 2000)


occ_search(scientificName="Decapoda", locality="Chengue")
occ_search(geometry='POLYGON((-74.2 11.1, -74.2 11.4 , -73.6  11.4, -74.2 11.1 ))',)


occ_search(scientificName="Pseudobalistes") 
pseudobalistes1 = occ_search(scientificName = "Pseudobalistes", 
                         return = "data",)
pseudobalistes1.occ = as.data.frame(pseudobalistes1[["data"]])

pseudobalistes2 = occ_search(scientificName = "Pseudobalistes", 
                             return = "data", start=501)
pseudobalistes2.occ = as.data.frame(pseudobalistes2[["data"]])


occ_search(geometry="POLYGON((-78.09 3.09, -78.15 2.87, -78.22 2.81, 
           -78.29 2.81, -78.24 3.09, -78.17 3.09, -78.09 3.09))", taxonKey=52)

gorgona <- occ_search(geometry="POLYGON((-78.09 3.09, -78.15 2.87, -78.22 2.81, 
           -78.29 2.81, -78.24 3.09, -78.17 3.09, -78.09 3.09))", 
                      taxonKey=229, limit=1266)

Gorgona_occ <- as.data.frame(gorgona[["data"]] )

write.csv(Gorgona_occ, file="crusties gorgona.csv", row.names=FALSE)

