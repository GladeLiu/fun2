par(bty="n",xaxt="n", yaxt="n",mar=rep(0,4),pch=19);
t<-seq(0,2*pi,length=1000);
x<-2*(2*sin(t))^3;
y<-13*cos(t)-5*cos(2*t)-2*cos(3*t)-cos(4*t);
plot(c(-20,20),c(-20,20),type="n",xlab="",ylab="");
points(x,y,col=rgb(1,0,0.2),cex=4);
x1<-runif(12000,-20,20);
y1<-runif(12000,-20,20);
points(x1,y1,col=rgb(1,0,0.2,alpha=0.01),cex=2.5);
borderx<-c(rep(-20:20,2),rep(-20,39),rep(20,39));
bordery<-c(rep(20,41),rep(-20,41),rep(-19:19,2));
repeat{
color=sample(rainbow(50));
points(borderx,bordery,col=color,cex=1.5);
}