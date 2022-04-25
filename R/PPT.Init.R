`PPT.Init` <-function(visible = TRUE,method="RDCOMClient",addPres=TRUE){

    ppt <- list()
    ppt$method=match.arg(method)


    if(ppt$method=="RDCOMClient"){
    
    	if (!require("RDCOMClient")) {
        	stop("The package RDCOMClient is unavailable. \n 
		To install RDCOMClient use:\n 
		devtools::install_github('omegahat/RDCOMClient')")
    	}



    }
	

    ppt$ppt <- RDCOMClient::COMCreate("PowerPoint.Application")


    
    if(addPres){
      ppt$pres<-ppt$ppt[["Presentations"]]$add()
    }

    if (visible) {
    	ppt$ppt[["Visible"]]<-TRUE
    }

  
    return(invisible(ppt))
}

