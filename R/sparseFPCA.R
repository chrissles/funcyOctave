#
#  Copyright (C) 2011-2015 Christina Yassouridis
#  
#

sparseFPCA <- function(data, time){
    loadMfiles()
    res <- RcppOctave::.CallOctave("makeRegPACE", data, time)
    time <- res$t_reg
    result <- res$y_reg
    ret <- list(data=result, time=time)
    return(ret)
}
    
