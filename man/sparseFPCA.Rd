%
%  Copyright (C) 2011-2015 Christina Yassouridis
% 
%

\name{sparseFPCA}
\alias{sparseFPCA}
\title{
  Regularization of sparse data.
}
\description{
  Performs regularization of sparse curves. 
}
\usage{
sparseFPCA(data, time)
}
\arguments{
  \item{data}{
    Data in general format for regular and irregular data.
    One long matrix with curve-ID in first column, curve evaluations in
    second and time points in third column.
  }

  \item{time}{
    Vector of new evaluation time points. Each curve is evaluated
    on the same time points. 
  }
}

\value{
  List containing the matrix of regularized data and the evaluation time vector.
}

\references{
    http://www.stat.ucdavis.edu/PACE/
}
  
\author{
  Christina Yassouridis
}
\note{
  The function is used by the R-package funcy as an optional
  regularization technique implemented in the function regFuncy. It can
  be used as standalone function as well. 
}


\examples{
data("simDat")
time <- seq(0,1,length.out=10)
res <- sparseFPCA(simDat, time)
}

\keyword{sparse, regular}
