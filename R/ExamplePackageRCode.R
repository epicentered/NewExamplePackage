proportionofrolls<-function(Rolls=100,DiceSum=c(3,10,11)){
  
  d1<-c(1:6)
  d2<-c(1:6)
  
  vectout<-rep(NA,Rolls)
  
  for(i in 1:Rolls){
    
    temp1<-sample(d1,1)
    temp2<-sample(d2,1)
    tempsum<-temp1+temp2
    
    if (tempsum %in% DiceSum) tempindictor<-1 else tempindictor<-0
    vectout[i]<-tempindictor
    
  }
  
  proportionrolls<-sum(vectout)/Rolls
  return(proportionrolls)
  
}

## we can make some changes
