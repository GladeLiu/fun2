clock<-function(t=1000,back,circle,hou,sec,min,method=3){
#Please install the package sound first
#t is the run time of the clock. it means t seconds later the clock will ring.
#if this clock is used to time, maybe set t large enough is appropriate.
#back is the color of background 
#circle is the color of the border
#hou is the color of hour pointer
#sec is the color of second pointer
#min is the color of minute pointer
#method is the method of alert,1 means ring, 2 means pop-up window(only windows)
#other means both 1,2
  #define the default value 
  if(t<=0){
    stop("t must greater than 0!")
  }
  if(missing(back)){
     back="gray";
     if(missing(circle)){
     circle="green";
     }
  }
  if(missing(hou)){
     hou<-"red";
     if(missing(min)){
        min<-"orange";
        if(missing(sec)){
          sec<-"blue";
        }
        else{next}     
    }
    else{next}
  }
  library(sound);#the package sound is required
  #plot the configuration of the clock
  par(bg=back,lwd=3,bty="n",xaxt="n", yaxt="n",
      font.main=4,cex.main=2)
  x=seq(0,2*pi,0.01);
  plot(cos(x),sin(x),type="l",xlab="",ylab="",col=circle);
    lines(1.05*sin(x),1.05*cos(x),col=circle);
    title(main="clock",sub="made by Chenang Liu");
   for(k in 1:12){
       second<-c("1","2","3","4","5","6","7",
                 "8","9","10","11","12");
       text(0.93*cos(2*pi/12*(3-k)),0.93*sin(2*pi/12*(3-k)),
            labels = second[k],adj=c(0.5,0.5),col="yellow",
            font=2,cex=1.7);
  
   }
   #get the system time
   A<-date();
   h0<-as.numeric(substr(A,12,13));  
   m0<-as.numeric(substr(A,15,16));
   n0<-as.numeric(substr(A,18,19));
   if(h0>12){
      h0=h0-12;
   }  
  n=60;m=60;h=12;
    f1<-function(ii){
       if((16-n0-i)<=-45){
           arrows(0,0,0.7*cos(2*pi/n*(16-m0-j)),
                  0.7*sin(2*pi/n*(16-m0-j)),col=back);   
           arrows(0,0,0.7*cos(2*pi/n*(15-m0-j)),
                  0.7*sin(2*pi/n*(15-m0-j)),col=min);
        }else{
           arrows(0,0,0.7*cos(2*pi/n*(16-m0-j)),
                  0.7*sin(2*pi/n*(16-m0-j)),col=min);
          }
    }
    f2<-function(jj){     
       if((16-m0-j)<=-44&(16-n0-i)<=-45){
           arrows(0,0,0.5*cos(2*pi/h*(4-h0-l)),
                  0.5*sin(2*pi/h*(4-h0-l)),col=back);    
           arrows(0,0,0.5*cos(2*pi/h*(3-h0-l)),
                  0.5*sin(2*pi/h*(3-h0-l)),col=hou);
        }else{
            arrows(0,0,0.5*cos(2*pi/h*(4-h0-l)),
                   0.5*sin(2*pi/h*(4-h0-l)),col=hou);
        }
    } 
    #main loop for the clock
 repeat{
    for(l in 1:h){
      for(j in 1:m){
         for(i in 1:n){
            points(0,0,cex=2);
            arrows(0,0,0.85*cos(2*pi/n*(16-n0-i)),
                   0.85*sin(2*pi/n*(16-n0-i)),col=back);
             f1(i);
             f2(j);            
            arrows(0,0,0.85*cos(2*pi/n*(15-n0-i)),
                   0.85*sin(2*pi/n*(15-n0-i)),col=sec);
            Sys.sleep(1);
            arrows(0,0,0.85*cos(2*pi/n*(15-n0-i)),
                   0.85*sin(2*pi/n*(15-n0-i)),col=back);
            f1(i);
            f2(j);
            lines(sin(x),cos(x),col=circle);
            t=t-1;
             if(t==0){
                break;
              }else{next}
         }
       f2(j);  
       if(t==0){
           arrows(0,0,0.7*cos(2*pi/n*(15-m0-j)),
                  0.7*sin(2*pi/n*(15-m0-j)),col=back); 
           points(0,0,cex=2);
           break;
       }else{next}

     }
     if(t==0){
       arrows(0,0,0.5*cos(2*pi/h*(3-h0-l)),
              0.5*sin(2*pi/h*(3-h0-l)),col=back); 
       points(0,0,cex=2);
       break;
     }
   }
    if(t==0){break}
    else{next}
 }
  #make the alert music
  #define the musical note
  s0 <- Sine(0,0.25);
  s1 <- Sine(523.25,0.25);
  s2 <- Sine(587.33,0.25);
  s3 <- Sine(659.26,0.25);
  s4 <- Sine(698.46,0.25);
  s5 <- Sine(784,0.25);
  s6 <- Sine(880,0.25);
  s7 <- Sine(987.77,0.25);
  s11 <- Sine(1046.5,0.25);
  sound<-appendSample(s5,s6,s5,s3,s4,s5,s4,s2,s1,s3,s5,s11);
  s<-mirror(sound);
  if(method==1){
      play(s);#play music     
  }
  else if(method==2){ 
      winDialog(,"Time Out£¡£¡£¡");
  }
  else{
      play(s);#play music
      winDialog(,"Time Out£¡£¡£¡");
  }
}

