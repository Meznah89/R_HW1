#' Generate random, 2D, linearly separable data
#'
#' This function generate random, 2D, linearly separable data for a perceptron model
#' @param num.values number of values for each feature
#' @param threshold.value cutoff value to separate data
#' @keywords random
#' @keywords linearly
#' @keywords separable
#' @export
#' @examples
#' df <- generate.perceptron.data(100,0)

generate.perceptron.data <- function(num.values, threshold.value) {
  values <- rnorm(num.values * 2)
  mat <- matrix(values, ncol = 2)
  class <- apply(mat, 1, function(v) {
    if (sum(v) < threshold.value) {
      return(-1)
    }
    else  return(1)
  })
  return (tbl_df(data.frame(class=class, bias_x0 = rep(1, num.values), x1=mat[,1], x2=mat[,2])))
}
