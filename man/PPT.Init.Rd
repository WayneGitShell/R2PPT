\name{PPT.Init}
\alias{PPT.Init}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Initialises a PowerPoint presentation}
\description{
Initialises a PowerPoint presentation by using RDCOMClient.
}
\usage{
PPT.Init(visible=TRUE, method = "RDCOMClient", addPres = TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{visible}{ Optional logical specifying if PowerPoint is visible from initialisation. Useful for debugging. Defaults to TRUE.}
 \item{method}{Choice of underlying COM technology method to implement R2PPT. Legacy function input, always uses RDCOMClient now.}
\item{addPres}{Add a presentation at initialisation? Defaults to TRUE.}
}
%\details{}
\value{

  \item{ppt}{Invisibly returns an initialised list of COM objects. 
%of class 'COMobject'.
}
  
}
\references{ 
See \url{https://github.com/omegahat/RDCOMClient} for more details on RDCOMClient and \url{https://github.com/waynegitshell/R2PPT/} for R2PPT source code. 
}

\author{ Wayne Jones \email{wayne.w.jones@shell.com}}
\section{Warning}{You must save the returned list of COM objects initialised with PPT.Init to an R object. See the example. }
%\note{}
\seealso{\code{\link{PPT.Init}},\code{\link{PPT.AddTitleSlide}},\code{\link{PPT.AddTextSlide}},\cr
\code{\link{PPT.AddTitleOnlySlide}},\code{\link{PPT.Present}},\code{\link{PPT.ApplyTemplate}},\code{\link{PPT.AddGraphicstoSlide}}}


\examples{

\dontrun{
myPres<-PPT.Init() 
myPres<-PPT.AddBlankSlide(myPres)
myPres<-PPT.AddTitleSlide(myPres,title="Title Slide",subtitle="Subtitle here")
myPres<-PPT.AddTitleOnlySlide(myPres,title="Title Only",title.fontsize=40,title.font="Arial")
myPres<-PPT.AddTextSlide(myPres,title="Text Slide",text="Text1 \rText2 \rText3",text.font="Arial")
rm(myPres)
} 

}
\keyword{IO}
\keyword{connection}
