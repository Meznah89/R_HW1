#' Simple Perceptron Model
#'
#' This function implements the simple perceptron algorithm on 2D, linearly separable data
#' @param features data.frame consisting of x1 and x2
#' @param class data.frame/vector of classes/labels
#' @param eta numerical value of the learning rate
#' @keywords perceptron
#' @keywords ml
#' @export
#' @examples
#' df <- generate.perceptron.data(100,0)
#' simple.perceptron(df[,c(3,4)], df$class, 1)

simple.perceptron <- function(features, classes, eta) {
  # create an initial weight vector of 0's for x0, x1, and x2
  weight <- rep(0, dim(features)[2] + 1)
  # by default, the percetron has not converged
  nonconvergence <- TRUE
  # keep track of number of epochs
  num.epochs <- 0
  # loop until the perceptron converges, that is
  # when all samples in an epoch produce no error
  while(nonconvergence) {
    # keep track of errors during each epoch
    errors <- rep(0, length(classes))
    num.epochs <- num.epochs + 1
    for (i in 1:length(classes)) {
      y.target <- classes[i]
      # Find the sum of x0w0 + x1w1 + x2w2
      x0w0 <- weight[1]
      train.sample <- as.numeric(features[i, ])
      train.weight <- weight[2:length(weight)]
      x1w1_x2w2 <- sum(train.weight * train.sample)
      z <- sum(x0w0, x1w1_x2w2)
      if (z < 0) {
        y.classifier <- -1
      } else {
        y.classifier <- 1
      }
      # compare y.target and y.classifier
      if (y.target != y.classifier) {
        # change weight vector -> eta * delta * train.sample
        delta <- y.target - y.classifier
        weight.delta <- eta * delta * c(1, train.sample)
        weight <- weight + weight.delta
        errors[i] <- 1
      }
    }
    if (sum(errors) == 0) {
      break
    }
  }
  print(paste0('The weights of convergence: ', paste0(weight, collapse=',')))
  print(paste0('Convergence achieved in ', num.epochs, ' epochs.'))
}

# 
# plot(df[, 3:4], xlab = "x1", ylab = "x2",
#      pch = ifelse(df$class == 1, 2, 8),
#      col = ifelse(df$class == 1, "blue", "red"))
# abline(0/9.86696618323493, -9.7127537728112/9.86696618323493)

