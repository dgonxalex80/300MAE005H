library(paquetePROB)
data(beer)
str(beer)

names(beer)
# [1] "id"       "precio"   "calorias" "poralcoh" "tipo"     "origen" 






# tipo de cerveza (1-lager artesanal, 2-clara artesanal, 3-lager importada, 4-cerveza normal y helada, y 5-cerveza baja en calorías y sin alcohol) y
# conteo por tipo (vector)
t1 <- table(beer$tipo)

# etiquetas (en el mismo orden que los niveles de 'tipo')
labs <- c("1-lager artesanal","2-clara artesanal","3-lager importada",
          "4-normal y helada","5-baja en alcohol")
names(t1) <- labs  # asigna etiquetas al vector

# colores que ya tienes definidos: c30, c41, c50, c01, c21
barplot(t1,
        las = 1,
        main = "Distribución tipo de cerveza",
        col = colores,
        ylim = c(0,70))   # leyenda

# país de origen (0-nacional, 1- importada).

t2 <- table(beer$origen)
labs=c("nacional","importada") 
pct=round(t2/sum(t2)*100) 
labs=paste(labs, pct);labs=paste(labs, "%", sep = " ") 
pie(t2, 
    labels=labs, 
    main=" Distribución por origen",
    col=c("#023047", "#f4d35e", "#ee964b"))




# precio de la presentación en caja de seis botellas de 12 onzas,
pmin=min(beer$precio)
pmax=max(beer$precio)
pmean  = mean(beer$precio)





# Boxplot con etiquetas en el eje X
boxplot(beer$precio ~ beer$tipo,
        col = colores,
        las = 1,
        ylab = "Precio",
        xlab = "Tipo",
        names = labs,       # aquí van las etiquetas
        main = "Distribución del precio por tipo de cerveza")


# contendo de calorias contenidas en una unidad de 12 onzas,
# --- Boxplot: Contenido de calorías ---
boxplot(beer$calorias ~ beer$tipo,
        col = colores,
        las = 1,
        ylab = "Calorías (por 12 oz)",
        xlab = "Tipo",
        names = labs,
        main = "Distribución de calorías por tipo de cerveza")

# porcentaje de contenido de alcohol por 12 onzas de contenido,
# --- Boxplot: Contenido de alcohol ---
boxplot(beer$poralcoh ~ beer$tipo,
        col = colores,
        las = 1,
        ylab = "Porcentaje de alcohol (%)",
        xlab = "Tipo",
        names = labs,
        main = "Distribución de alcohol por tipo de cerveza")

