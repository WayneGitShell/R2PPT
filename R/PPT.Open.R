"PPT.Open" <- function(file=stop("filename must be specified"),method="RDCOMClient"){

#file<-PPT.getAbsolutePath(file[1]) #New in Version 1.1
file[1]<-normalizePath(file[1]) #New in Version 2.2

if(!file.exists(file[1])) stop(paste(file[1],"does not exist")) 

ppt<-PPT.Init(visible=TRUE,method=method,addPres=FALSE)

ppt$pres <-ppt$ppt[["Presentations"]]$Open(file)


    return(invisible(ppt))
}

