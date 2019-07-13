setup<-function(){
  #create poker
  poker<-data.frame(name=c(rep(c("A",2:10,"J","Q","K"),times=4),c("joker","JOKER")),
                  color=c(rep(c("hearts","spades","clubs","diamonds"),each=13),c("joker","JOKER")),
                  value=c(rep(c(1:13),times=4),c(20,20)),
                  stringsAsFactors = F)
  #洗牌function,创建当前用的扑克pk
  shuffle<-function(){
    r_index<-sample(1:54,54)
    assign("pk",poker[r_index,],envir=parent.env(environment()))
  }
  
  #发牌function
  deal<-function(){
    dealing<-pk[1, ]
    assign("pk",pk[-1, ],envir=parent.env(environment()))
    dealing
  }
  
  list(shuffle=shuffle,deal=deal)
}

#构建起始环境
set<-setup()

#在global中指向子环境的函数
shuffle<-set$shuffle
deal<-set$deal

#enjoy！
shuffle()
deal()



















