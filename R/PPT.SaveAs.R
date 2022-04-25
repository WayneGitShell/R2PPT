"PPT.SaveAs" <-function(ppt,file=stop("filename must be specified.")){



#file<-PPT.getAbsolutePath(file)
file<-normalizePath(file[1],mustWork = FALSE) #New in Version 2.2

file<-gsub("/","\\\\",as.character(file)) #character should be \\\\ and not / some legacy compatibility issues. 

ppt$pres$SaveAs(file)
#comInvoke(ppt$pres,"SaveAs",gsub("/","\\\\",as.character(file)))

return(invisible(ppt))
}

