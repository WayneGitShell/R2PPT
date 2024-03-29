\name{PPT.AddBlankSlide}
\alias{PPT.AddBlankSlide}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Add a Blank Slide to current PowerPoint presentation}
\description{
Adds a slide to the current PowerPoint presentation of Microsoft type 'ppLayoutBlank'.
}
\usage{
PPT.AddBlankSlide(ppt)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{ppt}{ List of COM objects as initialised by PPT.Init. See example.}
}
%\details{}
\value{

  \item{ppt}{Invisibly returns a list of COM objects. 
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

