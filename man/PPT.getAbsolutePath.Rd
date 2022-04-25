\name{PPT.getAbsolutePath}
\alias{PPT.getAbsolutePath}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Gets the absolute pathname string.}
\description{
Gets the absolute pathname string.
}
\usage{
PPT.getAbsolutePath(pathname,workDirectory=getwd(),expandTilde=FALSE,...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{pathname}{ Required filename. See example}
\item{workDirectory}{Working driectory. Defaults to current R working directory.}
\item{expandTilde}{Optional. Expand tildas? Defaults to FALSE.}
\item{...}{Optional extra arguments.}
}
%\details{}
\value{

  Returns a character string of the absolute pathname.
  
}
\references{ 
See function "getAbsolutePath" from package Rutils: \url{ https://cran.r-project.org/package=R.utils}.

}
\author{Henrik Bengtsson \url{(http://www.braju.com/R/)} and modified by Wayne Jones \email{wayne.w.jones@shell.com}}
%\note{}



\examples{
\dontrun{
PPT.getAbsolutePath("myfilename.R")
}
}
\keyword{IO}
\keyword{connection}
