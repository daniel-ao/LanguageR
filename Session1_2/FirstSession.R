# Les types primitifs de variable:
a<- 87.89 # Assign a variable
a+3
b=67/4 ; b #Same thing that the line down
(b=67/4)
print(a)
print(a,digits=1)

x= NULL # We created an empty object, X exists but it's empty
x
# X # Not found
(expr = "mardi") #du texte


# Mathemetical operations
(x = a*(6^9-98.4)/6)
-4^6*7
457 %%3 #division entier
457/3
457 %% 3
3*152
round(457, 2)
sqrt(5)
abs(3-7)
exp(4)# exponential 
log(1)
log10(10)

# Logic tests
(a=65.147)
a<= 66 #
(test1 = a>70)
a!=65
a==65
a

# Le types d'un objet 
class(a)
class(test1)
class(expr)
# Conversion from type to another
a_char= as.character(a)
a_char
class(a_char)
class(a)== class(a_char)

A = as.numeric(a_char)
a==A
class(A)

#Vectors
# Vectors definition a partir de c()

x1=c(10.4, 5.6, 12, 78, 42.3)
c(T,T,TRUE, FALSE, F, F)
(x2= c("lundi", "mardi", "mercredi"))
(x3= c(x1, x2, 46, 17))
#Eza ba3mel vector wfee b2albu different types, byet7awal kel she balbu la string
c("F", F, "A", T)# Hayda example aan  line 57

# Another way to define vectors:
(x5 = 1:125)
6:97
(x6= 5.6 :11)


# Definitions a l'aide de seq()
(x7= seq(1,125, by=5))# seq(depart, max, by = le pas)
(x8= seq(1,14, by=0.8))
seq(5, 40, length=100)# seq(depart, arrivee, length= number of values)
seq(1, 1.1, length = 100)


(x9= c (x7, x8))
is.vector(x9)
is.numeric(x2)
is.character(x2)
x2

# Definitions a l'aide  de repition
(V = rep(10,8))
(V2= rep(c(1,2,3),8))
(V2= rep(c(1,2,3),each=8))# 8 1's 8 2's 8 3's

# Element selection by their index

(x10= c(-10, 20, 53, -41, NA, 74, 65))
x10[5]
x10[c(6 ,3, 5)] #Values of x10 feena n2ul metel list at indices 6 3 and 5
x10[-5]# Eza bade ma7e element 5 bade a3mel x10= x10[-5]
x10[-c(6, 3, 5)]
x10[which(x10>=0)]
x10[x10>=0]

x11=x10[- which(x10 == -10)]
x11


# mathemrtical functions

x= c(25, 18, 13, 17, 90, 27)

max(x)
min(x)
mean(x)
median(x)
median(x)

quantile(x)
quantile(x, probs = c(0.1,0.9)) # les delices D1 et D9
quantile(x, probs= seq(0.1,0.9, by=0.1)) #les deciles sans min et max
quantile(x, probs= seq(0,1, by=0.1))# les delices


IQR(x)

sd(x) #ecart type estimeee (Standard deviaition)
var(x) #variance estimee
sqrt(var(x))
sum(x)
length(x)

prod(x) 


## Rangeur les valeurs du vacteur SORT
x=sort(x)
rev(sort(x))
sort(x, decreasing= TRUE)
x
order(x) # By indices
x[order(x)]

# Methodes

objects()
ls()
#rm(list= ls()) #vide a memoire
#rm(list= ls(all=T))

# Matrices

(m1=matrix(1:8,nrow=2))
(m2=matrix(1:8, nrow=2, byrow =T))
m1

(m2=matrix(c(6,-2, 1, 0, 9, 11), 3 ,2))
(m2=matrix(c(6,-2, 1, 0, 9, 11),nrow=3))
(zero= matrix(0,4,5))
(ID5 = diag(5))
(m4= diag(c(-2,3,5)))
diag(8,5)

#Selection and operations in a matrix

m2[2,1]
m2[2,] # Row/Ligne
m2[,3] #Coulumn

m2
t(m2)
35*m2
m2+m4
m1
m2%*%m1
m4%*%m2
t(m2)%*%m2
