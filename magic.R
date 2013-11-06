par(bty="n",xaxt="n", yaxt="n",mar=c(0,0,0,0),cex=4,font=4);
plot(c(0,1),c(0,1),type="n",xlab="",ylab="");
text(0.4,0.9,"Who's turn?",
col=rainbow(1000)[sample(1:1000,1)],cex=1);
text(0.8,0.1,"made by Chen-ang Liu",
col=rainbow(1000)[sample(1:1000,1)],font=2,cex=0.2);
num<-1:99;
A<-100;
run<-function(key){
if(key=="s"){
rect(0.2,0.2,0.8,0.8,col="white",border=NA);
B<-sample(num,1);
A<-c(A,B)
text(0.5,0.5,B,col=rainbow(1000)[sample(1:1000,1)],cex=4);
}
else if(key=="a"){
set.seed(10);
}
else if(key=="q"){
set.seed(8);
}
else if(key=="w"){
set.seed(6);
}
else if(key=="d"){
set.seed(4);
}
else if(key=="z"){
set.seed(2);
}
else if(key=="x"){
set.seed(1);
}
else if(key=="c"){
set.seed(13);
}
}

getGraphicsEvent("run",onKeybd=run);