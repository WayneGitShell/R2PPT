\name{PPT.ApplyTemplate}
\alias{PPT.ApplyTemplate}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Applies a Template Design to current PowerPoint presentation}
\description{
Applies a Template Design to current PowerPoint presentation.
}
\usage{
PPT.ApplyTemplate(ppt,file)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
\item{ppt}{Required list of COM objects as initialised by PPT.Init. See example.}
\item{file}{Required filename giving the full file path of PowerPoint Template file. See example.}

}
%\details{}
\value{
  \item{ppt}{Invisibly returns a list of COM objects. }
}

\references{ 
See \url{ http://sunsite.univie.ac.at/rcom} for more details on rcom and \url{http://www.omegahat.org/RDCOMClient/} for more details on RDCOMClient.
}

\author{Wayne Jones \email{wayne_betws@hotmail.com}}

\section{Warning}{You must save the returned list of COM objects initialised with PPT.Init to an R object. See the example. }
%\note{}
\seealso{\code{\link{PPT.Init}},\code{\link{PPT.Present}},\code{\link{PPT.SaveAs}},\code{\link{PPT.Close}},\code{\link{PPT.AddTitleSlide}},\code{\link{PPT.AddTextSlide}},\cr
\code{\link{PPT.AddTitleOnlySlide}},\code{\link{PPT.Present}},\code{\link{PPT.ApplyTemplate}},\code{\link{PPT.AddGraphicstoSlide}}}


\examples{

\dontrun{
myPres<-PPT.Init() # or myPres<-PPT.Init(method="RDCOMClient")
myPres<-PPT.AddTitleSlide(myPres,title="Title Slide",subtitle="Subtitle here")
myPres<-PPT.AddTitleOnlySlide(myPres,title="Title Only",title.fontsize=40,title.font="Arial")
myPres<-PPT.AddTextSlide(myPres,title="Text Slide",text="Text1 \rText2 \rText3",text.font="Arial")

#### Must specify full file path to PowerPoint template file. For PowerPoint 2000 & 2003 should be something like:
myPres<-PPT.ApplyTemplate(myPres,file="C:/Program Files/Microsoft Office/Templates/Presentation Designs/Carnation.pot")
### For PowerPoint 2007 should be something like:
myPres<-PPT.ApplyTemplate(myPres,file="C:/Program Files/Microsoft Office/Templates/1033/ClassicPhotoAlbum.potx")
} 

}
\keyword{IO}
\keyword{connection}
