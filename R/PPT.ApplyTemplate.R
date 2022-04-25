"PPT.ApplyTemplate" <-function(ppt,file){



#file<-PPT.getAbsolutePath(file[1]) #New in Version 1.1
file[1]<-normalizePath(file[1]) #New in Version 2.2

if(!file.exists(file)) stop(paste(file, "does not exist"))
file<-gsub("/","\\\\",as.character(file))

#comInvoke(ppt$pres,"ApplyTemplate",file)
ppt$pres$ApplyTemplate(file)

return(invisible(ppt))
}

