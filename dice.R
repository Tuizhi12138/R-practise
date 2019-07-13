
#sum of two dice
result<-function(){
  #create dice
  dice<-1:6
  
  sum(sample(dice,size=2,replace=T))
}

#result
result()
