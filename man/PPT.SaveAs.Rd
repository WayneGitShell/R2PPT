\name{PPT.SaveAs}
\alias{PPT.SaveAs}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Save a PowerPoint presentation to file}
\description{
Saves a PowerPoint presentation to a specified file.
}
\usage{
PPT.SaveAs(ppt,file)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
\item{ppt}{Required list of objects of class 'COMobject' as initialised by PPT.Init. See example.}
\item{file}{Required filename to R graphics output. See example.}

}
%\details{}
\value{
  \item{ppt}{Invisibly returns a list of COM objects. }
}

\references{ 
See \url{https://github.com/omegahat/RDCOMClient} for more details on RDCOMClient and \url{https://github.com/waynegitshell/R2PPT/} for R2PPT source code. 
}

\author{ Wayne Jones \email{wayne.w.jones@shell.com}}
\section{Warning}{You must save the returned list of COM objects initialised with PPT.Init to an R object. See the example. No overwrite warning is given.
}

%\note{}
\seealso{\code{\link{PPT.Init}},\code{\link{PPT.Close}},\code{\link{PPT.AddTitleSlide}},\code{\link{PPT.AddTextSlide}},\cr
\code{\link{PPT.AddTitleOnlySlide}},\code{\link{PPT.Present}},\code{\link{PPT.ApplyTemplate}},\code{\link{PPT.AddGraphicstoSlide}}}


\examples{

\dontrun{
#Example of generating a presentation without making it visible (can be a lot quicker!).
myPres<-PPT.Init(visible=FALSE)
myPres<-PPT.AddBlankSlide(myPres)
myPres<-PPT.AddTitleSlide(myPres,title="Title Slide",subtitle="Subtitle here")
myPres<-PPT.AddTitleOnlySlide(myPres,title="Title Only",title.fontsize=40,title.font="Arial")
myPres<-PPT.AddTextSlide(myPres,title="Text Slide",text="Text1 \rText2 \rText3",text.font="Arial")
myPres<-PPT.SaveAs(myPres,file=paste(getwd(),"test R2PPT Pres.ppt",sep="/"))
myPres<-PPT.Close(myPres)
rm(myPres)

### Open presentation
myPres<-PPT.Open(file=paste(getwd(),"test R2PPT Pres.ppt",sep="/"))
myPres<-PPT.Present(myPres)
} 

}
\keyword{IO}
\keyword{connection}
