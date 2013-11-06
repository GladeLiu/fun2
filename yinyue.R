library(sound)
s0 <- Sine(0,0.5)
s1 <- Sine(523.25,0.25)
s2 <- Sine(587.33,0.25)
s3 <- Sine(659.26,0.25)
s4 <- Sine(698.46,0.25)
s5 <- Sine(784,0.25)
s6 <- Sine(880,0.25)
s7 <- Sine(987.77,0.25)
s11 <- Sine(1046.5,0.25)
s12 <- Sine(1174.66,0.25)
s13 <- Sine(1318.51,0.25)
B1<-appendSample(s0,s5,s5,s3,s3,s4,s4,s5,s5,s5,s5,s5,s5);
B2<-appendSample(s0,s5,s5,s3,s3,s4,s4,s5,s5,s5,s5,s5,s5);
B3<-appendSample(s0,s5,s5,s3,s3,s4,s4,s5,s5,s5,s11,s11,s12);
B4<-appendSample(s7,s7,s7,s7,s7,s7,s3,s5,s5,s5,s5,s5,s0);
B5<-appendSample(s5,s6,s6,s13,s13,s12,s12,s12,s12,s12,s12,s12,s12);
B6<-appendSample(s3,s5,s5,s12,s12,s12,s11,s11,s11,s11,s11,s11,s11);
B7<-appendSample(s3,s4,s4,s11,s11,s11,s11,s12,s13,s13,s11,s11,s7,s7,s7,s11,s11,s11,s11,s11);
s<-appendSample(B1,B2,B3,B4,B5,B6,B7);
s<-mirror(s)
play(s)