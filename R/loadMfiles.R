#
#  Copyright (C) 2011-2015 Christina Yassouridis
#  
#

loadMfiles <- function(){
    path <- system.file("m-files", package="funcyOctave")
    allmfiles <- list.files(path, pattern="\\.m$", full.names=TRUE)

    for(x in allmfiles)
        RcppOctave::o_source(x)
}
