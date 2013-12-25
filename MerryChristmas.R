set.seed(25);
part<-list(x0=0,y0=0,x1=0,y1=1,branch1=NULL,
           branch2=NULL,extend=NULL,lwd=1,
           depth=0,col="springgreen");
par(mfrow=c(1,1),mar=c(5,4,4,2)+0.1);
segplot<-function(tree) {
  if(is.null(tree))return()
  segments(tree$x0,tree$y0,tree$x1,tree$y1,
           col=tree$col,lwd=tree$lwd)
  segplot(tree$branch1)
  segplot(tree$branch2)
  segplot(tree$extend)
}
grow<-function(tree) {
  if(is.null(tree))return(NULL)
  tree$lwd=tree$lwd*1.2
  if (tree$lwd>2.5) tree$col <- 'brown'
  if (is.null(tree$extend)) {
    tree$extend<-list(
        x0=tree$x1,
        y0=tree$y1,
        x1=rnorm(1,1,.03)*(2*tree$x1-tree$x0),
        y1=(rnorm(1,.98,.02)+.02*(tree$x1==tree$x0))*(2*tree$y1-tree$y0),
        branch1=NULL,
        branch2=NULL,
        extend=NULL,
        lwd=1,
        depth=tree$depth,
        col=tree$col
    )
    length=sqrt((tree$x1-tree$x0)^2 + (tree$y1-tree$y0)^2)
    angle<-asin((tree$x1-tree$x0)/length)
    branch<-list(
        x0=(tree$x1+tree$x0)/2,
        y0=(tree$y1+tree$y0)/2,
        branch1=NULL,
        branch2=NULL,
        extend=NULL,
        lwd=1,
        depth=tree$depth,
        col=tree$col
    )
    shift <- rnorm(2,.5,.1)
    branch$x0 <- shift[1]*tree$x1+(1-shift[1])*tree$x0
    branch$y0 <- shift[1]*tree$y1+(1-shift[1])*tree$y0
    length=length*rnorm(1,.5,.05)
    co <- runif(1,.35,.45)
    branch$x1 <- branch$x0+sin(angle+co)*length
    branch$y1 <- branch$y0+cos(angle+co)*length
    tree$branch1 <- branch
    branch$x0 <- shift[2]*tree$x1+(1-shift[2])*tree$x0
    branch$y0 <- shift[2]*tree$y1+(1-shift[2])*tree$y0
    co <- runif(1,.35,.45)
    branch$x1 <- branch$x0+sin(angle-co)*length
    branch$y1 <- branch$y0+cos(angle-co)*length
    tree$branch2 <- branch    
  } else {
    tree$branch1 <- grow(tree$branch1)
    tree$branch2 <- grow(tree$branch2)
    tree$extend <- grow(tree$extend)
  }
  tree$depth <- tree$depth+1
  if (tree$depth>2)  tree$col <- "lightgreen"
  if (tree$depth>4)  tree$col <- "green"
  if (tree$depth>6)  tree$col <- "brown"  
  tree
}
tree<-part
for(i in 1:9){
  tree <- grow(tree)
} 
par(mar=c(0,0,0,0),bg="lightblue")
plot(x=c(-3,3),y=c(0,9),type="n",axes=F,xlab="",ylab="")
segplot(tree);
par(pch="*");
points(runif(80,-3,3),runif(80,2,9),cex=3,col="white");
points(runif(50,-3,3),runif(50,2,9),cex=2,col="white",pch=8);
text(0,7.5,"Merry Christmas",col="red",font=4,cex=3);
text(-2,6,"",col="blue",font=4,cex=1.8);
text(2,1,"Best Wishes,\n Chen-ang",col="grey",font=4,cex=1.2);
