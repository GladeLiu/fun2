par(bty="n",xaxt="n", yaxt="n",mar=c(0,0,0,0),cex=5,font=4);
plot(c(0,1),c(0,1),type="n",xlab="",ylab="");
color1<-rainbow(1000)[sample(1:1000,1)];
color2<-rainbow(1000)[sample(1:1000,1)];
color3<-rainbow(1000)[sample(1:1000,1)];
color4<-rainbow(1000)[sample(1:1000,1)];
color5<-rainbow(1000)[sample(1:1000,1)];
segments(0.1, 0.1, 0.1, 0.85, col=color1, lwd =4);
segments(0.25, 0.1, 0.25, 0.7, col=color1, lwd =4);
segments(0.4, 0.1, 0.4, 0.7, col=color1, lwd =4);
segments(0.55, 0.1, 0.55, 0.7, col=color1, lwd =4);
segments(0.7, 0.1, 0.7, 0.85, col=color1, lwd =4);
segments(0.85, 0.1, 0.85, 0.85, col=color1, lwd =4);
segments(0.1, 0.1, 0.85, 0.1, col=color1, lwd =4);
segments(0.1, 0.25, 0.7, 0.25, col=color1, lwd =4);
segments(0.1, 0.4, 0.85, 0.4, col=color1, lwd =4);
segments(0.1, 0.55, 0.85, 0.55, col=color1, lwd =4);
segments(0.1, 0.7, 0.85, 0.7, col=color1, lwd =4);
segments(0.1, 0.85, 0.85, 0.85, col=color1, lwd =4);
#margin
rect(0.08,0.08,0.87,0.87,border=color1, lwd =4);
#digit
text(0.5,0.95,"Calculator",font=2,col=color5,cex=0.6);
par(bty="n",xaxt="n", yaxt="n",mar=c(0,0,0,0),cex=5,font=4);
plot(c(0,1),c(0,1),type="n",xlab="",ylab="");
color1<-rainbow(1000)[sample(1:1000,1)];
color2<-rainbow(1000)[sample(1:1000,1)];
color3<-rainbow(1000)[sample(1:1000,1)];
color4<-rainbow(1000)[sample(1:1000,1)];
color5<-rainbow(1000)[sample(1:1000,1)];
segments(0.1, 0.1, 0.1, 0.85, col=color1, lwd =4);
segments(0.25, 0.1, 0.25, 0.7, col=color1, lwd =4);
segments(0.4, 0.1, 0.4, 0.7, col=color1, lwd =4);
segments(0.55, 0.1, 0.55, 0.7, col=color1, lwd =4);
segments(0.7, 0.1, 0.7, 0.85, col=color1, lwd =4);
segments(0.85, 0.1, 0.85, 0.85, col=color1, lwd =4);
segments(0.1, 0.1, 0.85, 0.1, col=color1, lwd =4);
segments(0.1, 0.25, 0.7, 0.25, col=color1, lwd =4);
segments(0.1, 0.4, 0.85, 0.4, col=color1, lwd =4);
segments(0.1, 0.55, 0.85, 0.55, col=color1, lwd =4);
segments(0.1, 0.7, 0.85, 0.7, col=color1, lwd =4);
segments(0.1, 0.85, 0.85, 0.85, col=color1, lwd =4);
#margin
rect(0.08,0.08,0.87,0.87,border=color1, lwd =4);
#digit
text(0.5,0.95,"Calculator",font=2,col=color5,cex=0.6);
text(0.5,0,"Made by Chen-ang Liu",font=2,col=color5,cex=0.2);
text(0.17,0.18,"1",font=2,col=color2);
text(0.32,0.18,"2",font=2,col=color2);
text(0.47,0.18,"3",font=2,col=color2);
text(0.17,0.33,"4",font=2,col=color2);
text(0.32,0.33,"5",font=2,col=color2);
text(0.47,0.33,"6",font=2,col=color2);
text(0.17,0.48,"7",font=2,col=color2);
text(0.32,0.48,"8",font=2,col=color2);
text(0.47,0.48,"9",font=2,col=color2);
text(0.17,0.63,"+",font=2,col=color3);
text(0.32,0.63,"-",font=2,col=color3);
text(0.47,0.63,"*",font=2,col=color3);
text(0.62,0.63,"/",font=2,col=color3);
text(0.62,0.48,"=",font=2,col=color3);
N<-c(0,0);add<-0;subtract<-0;multiply<-0;divide<-0;
keybd<-function(key){
   if(key=="1"){
      rect(0.12,0.71,0.69,0.84,col="white",border=NA);
      N<<-c(N,1);
      text(0.62,0.78,"1",font=2,col=color4);
   }else if(key=="2"){
      rect(0.12,0.71,0.69,0.84,col="white",border=NA);
      N<<-c(N,2);
      text(0.62,0.78,"2",font=2,col=color4);
   }else if(key=="3"){
      rect(0.12,0.71,0.69,0.84,col="white",border=NA);
      N<<-c(N,3);
      text(0.62,0.78,"3",font=2,col=color4);
   }else if(key=="4"){
      rect(0.12,0.71,0.69,0.84,col="white",border=NA);
      N<<-c(N,4);
      text(0.62,0.78,"4",font=2,col=color4);
   }else if(key=="5"){
      rect(0.12,0.71,0.69,0.84,col="white",border=NA);
      N<<-c(N,5);
      text(0.62,0.78,"5",font=2,col=color4);
   }else if(key=="6"){
      rect(0.12,0.71,0.69,0.84,col="white",border=NA);
      N<<-c(N,6);
      text(0.62,0.78,"6",font=2,col=color4);
   }else if(key=="7"){
      rect(0.12,0.71,0.69,0.84,col="white",border=NA);
      N<<-c(N,7);
      text(0.62,0.78,"7",font=2,col=color4);
   }else if(key=="8"){
      rect(0.12,0.71,0.69,0.84,col="white",border=NA);
      N<<-c(N,8);
      text(0.62,0.78,"8",font=2,col=color4);
   }else if(key=="9"){
      rect(0.12,0.71,0.69,0.84,col="white",border=NA);
      N<<-c(N,9);
      text(0.62,0.78,"9",font=2,col=color4);
   }else if(key=="Left"){
      add<<-1;subtract<<-0;multiply<<-0;divide<<-0;
      text(0.17,0.63,"+",font=2,col=color3);
   }else if(key=="Up"){
      add<<-0;subtract<<-1;multiply<<-0;divide<<-0;
      text(0.32,0.63,"-",font=2,col=color3);
   }else if(key=="Right"){
      add<<-1;subtract<<-0;multiply<<-1;divide<<-0;
      text(0.47,0.63,"*",font=2,col=color3);
   }else if(key=="Down"){
      add<<-0;subtract<<-0;multiply<<-0;divide<<-1;
      text(0.62,0.63,"/",font=2,col=color3);
   }else if(key=="e"){
      rect(0.12,0.71,0.69,0.84,col="white",border=NA);
      a<<-N[(length(N)-1)];b<<-N[length(N)];
      if(add==1){
        cons<<-a+b;
      }else if(subtract==1){
        cons<<-a-b;
      }else if(multiply==1){
        cons<<-a*b;
      }else if(divide==1){
        if(b==0){cos<<-0;}
        else{
        cons<<-a/b;}
      }
      text(0.4,0.78,cons,font=2,col=color4);
   }
}
mousedown<-function(button,x,y){
     if(x>0.1&&x<0.25&&y>0.1&&y<0.25){
      rect(0.12,0.71,0.69,0.84,col="white",border=NA);
      N<<-c(N,1);
      text(0.62,0.78,"1",font=2,col=color4);
   }else if(x>0.25&&x<0.4&&y>0.1&&y<0.25){
      rect(0.12,0.71,0.69,0.84,col="white",border=NA);
      N<<-c(N,2);
      text(0.62,0.78,"2",font=2,col=color4);
   }else if(x>0.4&&x<0.55&&y>0.1&&y<0.25){
      rect(0.12,0.71,0.69,0.84,col="white",border=NA);
      N<<-c(N,3);
      text(0.62,0.78,"3",font=2,col=color4);
   }else if(x>0.1&&x<0.25&&y>0.25&&y<0.4){
      rect(0.12,0.71,0.69,0.84,col="white",border=NA);
      N<<-c(N,4);
      text(0.62,0.78,"4",font=2,col=color4);
   }else if(x>0.25&&x<0.4&&y>0.25&&y<0.4){
      rect(0.12,0.71,0.69,0.84,col="white",border=NA);
      N<<-c(N,5);
      text(0.62,0.78,"5",font=2,col=color4);
   }else if(x>0.4&&x<0.55&&y>0.25&&y<0.4){
      rect(0.12,0.71,0.69,0.84,col="white",border=NA);
      N<<-c(N,6);
      text(0.62,0.78,"6",font=2,col=color4);
   }else if(x>0.1&&x<0.25&&y>0.4&&y<0.55){
      rect(0.12,0.71,0.69,0.84,col="white",border=NA);
      N<<-c(N,7);
      text(0.62,0.78,"7",font=2,col=color4);
   }else if(x>0.25&&x<0.4&&y>0.4&&y<0.55){
      rect(0.12,0.71,0.69,0.84,col="white",border=NA);
      N<<-c(N,8);
      text(0.62,0.78,"8",font=2,col=color4);
   }else if(x>0.4&&x<0.55&&y>0.4&&y<0.55){
      rect(0.12,0.71,0.69,0.84,col="white",border=NA);
      N<<-c(N,9);
      text(0.62,0.78,"9",font=2,col=color4);
  }else if(x>0.1&&x<0.25&&y>0.55&&y<0.7){
      add<<-1;subtract<<-0;multiply<<-0;divide<<-0;
      text(0.17,0.63,"+",font=2,col=color3);
   }else if(x>0.25&&x<0.4&&y>0.55&&y<0.7){
      add<<-0;subtract<<-1;multiply<<-0;divide<<-0;
      text(0.32,0.63,"-",font=2,col=color3);
   }else if(x>0.4&&x<0.55&&y>0.55&&y<0.7){
      add<<-0;subtract<<-0;multiply<<-1;divide<<-0;
      text(0.47,0.63,"*",font=2,col=color3);
   }else if(x>0.55&&x<0.7&&y>0.55&&y<0.7){
      add<<-0;subtract<<-0;multiply<<-0;divide<<-1;
      text(0.62,0.63,"/",font=2,col=color3);
   }else if(x>0.55&&x<0.7&&y>0.4&&y<0.55){
      rect(0.12,0.71,0.69,0.84,col="white",border=NA);
      a<<-N[(length(N)-1)];b<<-N[length(N)];
      if(add==1){
        cons<<-a+b;
      }else if(subtract==1){
        cons<<-a-b;
      }else if(multiply==1){
        cons<<-a*b;
      }else if(divide==1){
        if(b==0){cos<<-0;}
        else{
        cons<<-a/b;}
      }
      cons<<-round(cons,2)
      text(0.4,0.78,cons,font=2,col=color4);
   }

}
getGraphicsEvent("run!",onKeybd=keybd,onMouseDown=mousedown)