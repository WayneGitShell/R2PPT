\name{PPT.AddDataFrame}
\alias{PPT.AddDataFrame}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Adds a R data frame to the current slide}
\description{
  Adds a R data frame to the current slide using the 'AddOLEObject' PowerPoint method.
}
\usage{
PPT.AddDataFrame(ppt, df = stop("Data frame must be specified"), 
size = c(120, 110, 480, 320), row.names = TRUE, col.names = TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{ppt}{Required list of COM objects as initialised by PPT.Init. See example.}
  \item{df}{a R dataframe.}
  \item{size}{Optional numeric vector of size 4 (Left,Top,Width,Height) giving the dimensions of the 
  R data frame as it appears in the PowerPoint slide. }
  \item{row.names}{logical; include data frame row names?}
  \item{col.names}{logical; include data frame column names?}
}
\details{
The function saves the data frame as a temporary csv file and then inserts this into presentation using 
the PowerPoint 'AddOLEObject' method. PowerPoint treats this as an embedded Excel file which is convenient 
for further editing of the data frame. 
}
\value{

  \item{ppt}{Invisibly returns a list of COM objects. 
%of class 'COMobject'.
}
}

\references{ 
See \url{ http://sunsite.univie.ac.at/rcom} for more details on rcom and \url{http://www.omegahat.org/RDCOMClient/} for more details on RDCOMClient.
}

\author{ Wayne Jones \email{wayne_betws@hotmail.com}}
%\note{ ~~further notes~~ }

\section{Warning}{You must save the returned list of COM objects initialised with PPT.Init to an R object. See the example. }


\seealso{\code{\link{PPT.Init}},\code{\link{PPT.AddTitleSlide}},\code{\link{PPT.AddTextSlide}},\cr
\code{\link{PPT.AddTitleOnlySlide}},\code{\link{PPT.Present}},\code{\link{PPT.ApplyTemplate}},\code{\link{PPT.AddGraphicstoSlide}}}


\examples{
\dontrun{

ctl <- c(4.17,5.58,5.18,6.11,4.50,4.61,5.17,4.53,5.33,5.14)
trt <- c(4.81,4.17,4.41,3.59,5.87,3.83,6.03,4.89,4.32,4.69)
group <- gl(2,10,20, labels=c("Ctl","Trt"))
weight <- c(ctl, trt)
my.df<-data.frame(weight=weight,group=group)

opar <- par(mfrow = c(2,2), oma = c(0, 0, 1.1, 0))
plot(lm(weight ~ group,data=my.df), las = 1)      # Residuals, Fitted, ...
par(opar)


myPres<-PPT.Init(visible=TRUE)
myPres<-PPT.AddBlankSlide(myPres)
myPres<-PPT.AddGraphicstoSlide(myPres,size= c(200, 10, 500, 500))
myPres<-PPT.AddDataFrame(myPres, df = my.df,row.names=FALSE,size=c(30,100,100,300))
myPres<-PPT.Present(myPres)

### Double click the data frame in PowerPoint to edit further..

}
}
\keyword{IO}
\keyword{connection}
