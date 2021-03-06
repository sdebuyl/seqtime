#' Run the Unified Neutral Theory of Biodiversity (UNTB) model
#'
#' @param N number of species
#' @param y intial abundances
#' @param m migration probability between 0 and 1
#' @param tskip number of initial time points to be skipped when returning the result (to avoid the transient)
#' @param tend number of time points (i.e. the number of generations)
#' @return a matrix with species abundances as rows and time points as columns
#' @seealso \code{\link{ricker}} for the Ricker model and \code{\link{glv}} for the generalized Lotka Volterra model
#' @export

simuntb<-function(N,y=rep(1,N),m=0.02, tskip=0, tend=500){

# Set random seed
set.seed(24451)

# gens: generations
# keep: keep the whole time series
# outcome: timepoints x species
ts <- untb(start = y, prob = m, gens = tend, keep = TRUE, meta = as.count(1:100))
if(tskip > 0){
  ts <- ts[(tskip+1):nrow(ts),]
}
return(t(ts))
}

