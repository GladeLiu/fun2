par(bg="lightskyblue",bty="n",xaxt="n", yaxt="n",mar=c(0,0,0,0),cex=4,font=4); 
plot(c(0,1),c(0,1),type="n",xlab="",ylab="");
t<-seq(0,2*pi,0.01);
#lines(0.45*cos(t)+0.5,0.45*sin(t)+0.5,lwd=12,col="yellow");
rect(0.16,0.56,0.84,0.75,col="grey",border="lightskyblue");
#ºØ´Ê
y<-c(11, 8, 2, 11, 10, 8, 5, 3, 11, 9, 8, 5, 1, 12,
    11, 8, 7, 6, 5, 4, 3, 2, 1, 11, 9, 8, 5, 11, 10, 8, 5, 3,
    1, 8, 2, 11, 10, 9, 8, 7, 6, 5, 4, 3, 11, 8, 11, 8, 7, 6,
    5, 4, 3, 2, 1, 12, 8, 8, 50, 8, 4, 9, 4, 12, 11, 10, 7, 6,
    5, 4, 10, 7, 4, 10, 7, 4, 10, 7, 4, 10, 9, 8, 7, 6, 5, 4,
    3, 2, 1, 10, 7, 4, 10, 7, 4, 10, 7, 4, 10, 7, 4, 10, 4, 50,
    9, 8, 7, 50, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 9, 1,
    8, 6, 2, 10, 6, 3, 10, 6, 4, 12, 11, 10, 9, 8, 7, 6, 5, 10,
    6, 4, 10, 6, 3, 10, 9, 8, 7, 6, 2, 6, 1, 50, 50, 7, 2, 11,
    10, 9, 8, 7, 3, 11, 7, 5, 4, 11, 7, 11, 7, 1, 11, 9, 8, 7,
    6, 5, 4, 3, 2, 1, 12, 7, 12, 7, 5, 12, 7, 4, 7, 3, 2, 7,
    50, 50, 50, 50, 10, 9, 8, 7, 6, 5, 4, 2, 50, 50, 50, 50);
r<-c(3, 5, 5, 10, 4, 6, 2, 9, 2, 9, 2, 1, 1, 2, 2,
    7, 3, 3, 3, 10, 3, 3, 3, 3, 2, 1, 3, 1, 12, 2, 3, 3, 3, 8,
    3, 3, 6, 2, 1, 1, 2, 6, 4, 2, 3, 10, 2, 3, 3, 3, 1, 1, 1,
    1, 1, 8, 1, 1, 1, 1);
x<-rep(1:60,r);
points(x/90+0.18,y/90+0.58,asp=1,pch="*",xlim=c(0,1),ylim=c(0,1),
     col=rainbow(length(x))[1:length(x)],cex=0.5);
#ÑÌ»¨
fire<-function(centre=c(0,0),r=1:5,theta=seq(0,2*pi,length=100),col=rgb(1,1,0)){
  x<-centre[1]+outer(r,theta,function(r,theta) r*sin(theta))
  y<-centre[2]+outer(r,theta,function(r,theta) r*cos(theta))
  matplot(x,y,type="l",lty=1,lwd=2,col = col,add=T)
}
set.seed(8);
m<-runif(20,0,1);
n<-runif(20,0.8,1);
col<-heat.colors(20);
for(i in 1:length(m)){
   fire(centre=c(m[i],n[i]),r=seq(0.008,runif(1,0.03,0.05),length=8),
     theta=seq(0,2*pi,length=30),col=sample(col)[1]);
}

#Ð¦Á³
text(0.5,0.4,"^    ^",
     col="purple",font=2,cex=2);
lines(0.04*cos(-t[24:290])+0.5,0.04*sin(-t[24:290])+0.3,lwd=12,col="purple");

#×£¸£
#text(0.16,0.2,"To \n Everyone",
#     col=rainbow(1000)[sample(1:1000,1)],font=4,cex=0.5);

#ÊðÃû
text(0.82,0.05,"Best Wishes \n Chen-ang Liu",
     col=rainbow(1000)[sample(1:1000,1)],font=4,cex=0.3);