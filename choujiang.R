par(bty="n",xaxt="n", yaxt="n",mar=c(0,0,0,0),cex=5,font=4);
plot(c(0,1),c(0,1),type="n",xlab="",ylab="");
num<-1:99;
stop1<-function(key){
    if(key=="a"){
       rect(0.2,0.2,0.8,0.8,col="white",border=NA);
       B<-sample(num,1);
       text(0.5,0.5,B,col="blue",cex=6);
      stop("stop!")
    }
    }
random<-function(buttons,x,y){
  if(buttons==0){
   for(i in 1:10000){
     A<-sample(num,1);
     text(0.5,0.5,A,col="red");
     Sys.sleep(0.2);
     rect(0.2,0.2,0.8,0.8,col="white",border=NA);
     }
   }
 }
getGraphicsEvent("",onMouseDown=random,onKeybd=stop);
