word<-function(word,m=50,n=50,cex=3.4,flipud=FALSE,...){
  library(jpeg);
  jpeg("pic.jpg",width=m,height=n);
  par(bty="n",xaxt="n",yaxt="n",mar=c(0,0,0,0),cex=cex,...); 
  plot(c(0,1),c(0,1),type="n",xlab="",ylab="");
  text(0.5,0.5,word);
  dev.off(); 
  W<-readJPEG("pic.jpg");W<-W[,,1];
  W[W>0.5]=1;W[W<=0.5]=0;
  t<-sum(W);
  if(flipud==FALSE){
    d=2;
  }else{ d=1; }
  image(1:50,1:50,flipdim(t(W),d),col=c("black","white"),
  axes=FALSE,ann=FALSE);
}

#a simple example
word("ÀÖ",flipud=TRUE£¬font=2)