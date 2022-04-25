"PPT.Present" <-function(ppt){


#if(!comGetProperty(ppt$ppt,"Visible")){comSetProperty(ppt$ppt,"Visible",TRUE)}
ppt$ppt[["Visible"]]<-TRUE

#comInvoke(comGetProperty(ppt$pres,"SlideShowSettings"),"Run")

ppt$pres[["SlideShowSettings"]]$Run()

return(invisible(ppt))
}

