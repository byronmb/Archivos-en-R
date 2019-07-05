##PREGUNTA 1
random.number = numeric(20)
random.seed = 17218 #semilla
for (j in 1:20) {
  random.seed = (172*random.seed)%%30307
  random.number[j] = random.seed/30307
}
random.number

##PREGUNTA 2
random.number = numeric(20)
random.seed = 2018 #semilla
for (j in 1:20) {
  random.seed = (171*random.seed)%%32767
  random.number[j] = random.seed/32767
}
random.number

##PREGUNTA 3
##opcion a
set.seed(32078)
runif(10, min = 0,max = 1)
##opcion b
set.seed(32078)
runif(10, min = 3,max = 7)
##opcion c
set.seed(32078)
runif(10, min = -2,max = 2)

##PREGUNTA 4
U <- numeric(1000)
set.seed(19908)
U<- runif(1000)
U

#opcion b
###media
promedio<-sum(U)/length(U)
promedio
mean(U)
###Varianza
varianza<- sum(((U-promedio)^2)/length(U))
varianza
var(U)
###Desviacion estandar
desv_estandar = sqrt(varianza)
desv_estandar
sd(U)

#opcion c
#proporcion
prop.table(table(U<0.6))
#probabilidad
numbers <- runif(U,min=0,max=0.6)
number<-sample(numbers, 1)
punif(number)

#opcion d
mean(1/(U+1))

#opcion e
hist(U)
hist(1/(U+1))

##PREGUNTA 5
##opcion a
r<-runif(10000,min=3.7,max=5.8) 

###media
promedio<-sum(r)/length(r)
promedio
mean(r)
###Varianza
varianza<- sum(((r-promedio)^2)/length(r))
varianza
var(r)
###Desviacion estandar
desv_estandar = sqrt(varianza)
desv_estandar
sd(r)
#opcion b
number<-sample(r, 1)
qunif(number,min=4,max=5.8)


## EJERCICIO 6
# LITERAL A
u1 <- runif(10000, min = 0, max = 1)
u2 <- runif(10000, min = 0, max = 1)
mean(u1+u2)
mean(u1)+mean(u2)

# LITERAL B
var(u1+u2)
var(u1) + var(u2)

# LITERAL C
mean(u1+u2)
mean(u1+u2) <= 1.5

# LITERAL D
mean(sqrt(u1)+sqrt(u2))
mean(sqrt(u1)+sqrt(u2)) <= 1.5


## EJERCICIO 7
# LITERAL A 
u1 <- runif(10000, min = 0, max = 1) 
u2 <- runif(10000, min = 0, max = 1) 
u3 <- runif(10000, min = 0, max = 1) 
mean(u1+u2+u3) 
# LITERAL B
var(u1+u2+u3) 
var(u1) + var(u2) + var(u3) 
# LITERAL C 
mean(sqrt(u1+u2+u3)) 
#LITERAL D 
mean(sqrt(u1)+sqrt(u2)+sqrt(u3)) 
mean(sqrt(u1)+sqrt(u2)+sqrt(u3)) >= 0.8 

