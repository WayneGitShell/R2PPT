\name{PPT.Open}
\alias{PPT.Open}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Open an existing PowerPoint presentation}
\description{
Opens an existing PowerPoint presentation.
}
\usage{
PPT.Open(file=stop("filename must be specified"),method="RDCOMClient")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
\item{file}{Required filename giving the full file path to existing PowerPoint presentation. See example.}
\item{method}{Choice of underlying COM technology method to implement R2PPT. Legacy function input, always uses RDCOMClient now.}

}
%\details{}
\value{
  \item{ppt}{Invisibly returns a list of COM objects. }
}

\references{ 
See \url{https://github.com/omegahat/RDCOMClient} for more details on RDCOMClient and \url{https://github.com/waynegitshell/R2PPT/} for R2PPT source code. 
}

\author{ Wayne Jones \email{wayne.w.jones@shell.com}}
\section{Warning}{You must save the returned list of COM objects initialised with PPT.Init to an R object. See the example. }

%\note{}
\seealso{\code{\link{PPT.Init}},\code{\link{PPT.SaveAs}},\code{\link{PPT.Close}},\code{\link{PPT.AddTitleSlide}},\code{\link{PPT.AddTextSlide}},\cr
\code{\link{PPT.AddTitleOnlySlide}},\code{\link{PPT.Present}},\code{\link{PPT.ApplyTemplate}},\code{\link{PPT.AddGraphicstoSlide}}}


\examples{

\dontrun{
#Create and save a presentation

myPres<-PPT.Init(visible=FALSE)
myPres<-PPT.AddTitleSlide(myPres,title="Title Slide",subtitle="Subtitle here")
myPres<-PPT.AddTitleOnlySlide(myPres,title="Title Only",title.fontsize=40,title.font="Arial")
myPres<-PPT.AddTextSlide(myPres,title="Text Slide",text="Text1 \rText2 \rText3",text.font="Arial")
myPres<-PPT.SaveAs(myPres,file=paste(getwd(),"test R2PPT Pres.ppt",sep="/"))
myPres<-PPT.Close(myPres)
rm(myPres)

#Open the saved presentation and carry on...

myPres<-PPT.Open(file=paste(getwd(),"test R2PPT Pres.ppt",sep="/"))
myPres<-PPT.AddTitleOnlySlide(myPres,title="Carry on appending to existing PPT file!")

} 

}
\keyword{IO}
\keyword{connection}

