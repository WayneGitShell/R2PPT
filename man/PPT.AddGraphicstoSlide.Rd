\name{PPT.AddGraphicstoSlide}
\alias{PPT.AddGraphicstoSlide}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Adds an R graphics output to the current slide of current PowerPoint presentation}
\description{
Adds an R graphics output to the current slide of the PowerPoint presentation using the PowerPoint 'AddPicture' method.
Graphics output can either be a graphical output file or the current R graphics device as specified by \code{dev.cur}.
}
\usage{
PPT.AddGraphicstoSlide(ppt, file = NULL, size = c(10, 10, 700, 500), dev.out.type = "jpeg")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
 \item{ppt}{List of COM objects as initialised by PPT.Init. See example.}
  \item{file}{Optional filename giving the full file path to R graphics output. See example.}
  \item{size}{Optional numeric vector of size 4 (Left,Top,Width,Height) giving the dimensions of the R graphics in the PowerPoint slide. 
	Defaults to c(10, 10, 700, 500) which covers most of the slide. }
  \item{dev.out.type}{Optional character type of output to use when using current graphics device. Defaults to "jpeg". Ignored if file is specified.}
}
%\details{~~ If necessary, more details than the description above ~~}
\value{

  \item{ppt}{Invisibly returns a list of COM objects. 
%of class 'COMobject'.
}
  
}
\references{ 
See \url{ http://sunsite.univie.ac.at/rcom} for more details on rcom and \url{http://www.omegahat.org/RDCOMClient/} for more details on RDCOMClient.
}

\author{ Wayne Jones \email{wayne_betws@hotmail.com}}
\section{Warning}{You must save the returned list of COM objects initialised with PPT.Init to an R object. See the example. }
%\note{}
\seealso{\code{\link{PPT.Init}},\code{\link{PPT.AddTitleSlide}},\code{\link{PPT.AddTextSlide}},\cr
\code{\link{PPT.AddTitleOnlySlide}},\code{\link{PPT.Present}},\code{\link{PPT.ApplyTemplate}},\code{\link{savePlot}}}

\examples{

\dontrun{
myPres<-PPT.Init(visible=TRUE)
myPres<-PPT.AddTitleSlide(myPres,title="How to add R graphics to PowerPoint!")

## Example adding graphic from file
myPres<-PPT.AddBlankSlide(myPres)
jpeg(file="testRplot1.jpeg",quality=100,height=960,width=960)
plot(rnorm(100))
dev.off()
# You must give full file path
myPres<-PPT.AddGraphicstoSlide(myPres,file=paste(getwd(),"testRplot1.jpeg",sep="/"))
unlink(paste(getwd(),"testRplot1.jpeg",sep="/"))
## Example adding graphic from current graphics device
myPres<-PPT.AddBlankSlide(myPres)
hist(rnorm(100))
myPres<-PPT.AddGraphicstoSlide(myPres,size= c(10, 10, 300, 500))
hist(runif(100))
myPres<-PPT.AddGraphicstoSlide(myPres,size= c(350, 10, 300, 500))

} 

}
\keyword{IO}
\keyword{connection}
