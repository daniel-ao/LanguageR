#---------------------------------------------#
#----------------TP1--------------------------#

#---EX_1---#

  #--1--#
          v1= c(seq(145,165))
  #--2--#
          A= c(seq(45,145))
  #--3--#
          V= c(v1,24.5,65.75, A)
          # It gives the values of V as Floats and not integers
          #taille = length(V)
  #--4--#
          #-a-# 
            first= V[1]
          #-b-#
            V2= c(V[18],V[5],V[10])
          #-c-#
            V3= c(V[3],V[15])
          #-d-#
            V4=V[-c(3,9,17,13)]
          #-e-#
            V[8]=99
  #--5--#
          p=c(seq(1,8),5:1,5:12) #OU p=c(seq(1,8),seq(5,1, by=-1),seq())
          p
          (length(p))
          v1
          (length(v1))
          
          (p*v1)  # It does the calculation of p[1..n]*v1[1..n]
  #--6--#
          v1
          p
          (moyennePond= weighted.mean(v1,w=p))
  #--7--#
          rm(list= ls(all=T))

#---EX_2---#
          
  #--1--#
          Sexe= c("F","F","M","F","M","M","M","M","M","M")
  #--2--#        
          Poids=c(16, 14 ,13.5 ,15.4 ,16.5 , 16, 17, 14.8, 17,16.7)
          MEAN=mean(Poids)
          MEDIAN=median(Poids)
          StandardDev=sd(Poids)
          QUANTILE=IQR(Poids)
          Poids_sup_moyenne = Poids[Poids > MEAN]
  #--3--#
          Taille= c(100, 97, 95.5, 101, 100, 98.5, 103, 98, 101.5, 100)
  #--4--#
          Ans=  c(3, 3, 3, 4, 3, 4, 3, "Non resignee", 4, 3)
          Mois= c(5, 10, 5, 0, 8, 0, 11, 9, 1, 3)
  #--5--#
          ZEP= c("Oui", "Oui", "Oui", "Oui", "Oui", "Non", "Oui", "Non", "Oui", "Oui" )
          # (length(ZEP))
  #--6--#
          Les_Types= c(class(Sexe),class(Poids), class(Taille), class(Ans), class(Mois), class(ZEP))
  #--7--#        
          Ans[8]=3
          Ans= as.numeric(Ans)
          Les_Types
  #--8--#
          Y = c(5, 10, 5, 0, 8, 7 , 11, 9, 1, 3)
  #--9--#
          (Mois==Y)
          diff_indices = which(Mois != Y)
  #--10--#
          (IMC=Poids/Taille)
          # msg=paste("Poids est",Poids, "Taille est" Taille)
  
  #--12--#
          ageT= paste(Ans, " Ans et", Mois, " Mois")
          ageT2= paste0(Ans, " Ans et ", Mois, " Mois")
  #--13--#
          #-a-# 
            MoisN=round((Mois / 12) * 10)
          #-b-# 
            ageN=paste(Ans, MoisN, sep = ".")
          #-c-#
            rm(An, MoisN)
          #-d-#
            ls()
  #--14--#
          ageN=as.numeric(ageN)
          moyen= mean(ageN)
          
#---EX_3---#
  
  #--1--#
          #A(i,j)=A(ligne, colonne)
          A=matrix(c(19,12,12,12,-16,-13,-16,-16,-8,-4,-1,-11,0,-2,0,10),nrow=4, ncol=4, byrow = T)
          W=matrix(c(5,4,3,2), byrow=T)
  #--2--#
          (A%*%W)
  #--3--#
          A
          A[,4]
          A[2,]
          A[,-3]      
  #--4--#
          (A[4,2]=0)
          (Deti=det(A))
          if(Deti!=0)
            (test=solve(A))
  #--7--#
          (B=matrix(c(1,-12,13,10), nrow=4))
          x=solve(A,B)          
          x    
  #--8--#
          Id=diag(4)      
          Id          
          C=A - (7* Id)
          C
  #--10--#
          eig= eigen(A)
          (eig$values) # Valeurs propes
          (eig$vectors) # Vecteurs propes
  #--11--#
          (D=matrix(c(23,5,-17,2,0,-15,25,3,-3,19,8,-21,0,2,-18), nrow=5, byrow = T))
          (v=matrix(c(-3,4,0,-1,11)))
  #--12--#
          (DD=t(D))
          (DTD= D%*%DD)
  #--13--#
          (Deti2=det(DTD))
          Deti2
          if(Deti2!=0)
            (inv=solve(DTD))
  #--14--#
          temp=DD%*%v
          (inv%*%v)
          
          
#---EX_4---#
  
  #--1--#
          