"PPT.Close" <-function(ppt){



#comInvoke(ppt$pres,"Close")
ppt$pres$Close()


return(invisible(ppt))
}

