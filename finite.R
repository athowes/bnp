# Fix K
K <- 5

# Suppose that we have some Gaussian base measure G
theta <- rnorm(n = K, 0, 1)

# Fix alpha
alpha <- c(5, 25, 40, 1, 5)

# Draw weights from the Dirichlet
w <- gtools::rdirichlet(n = 1, alpha = alpha)

discrete_measure <- data.frame(theta = theta, w = t(w))

library(ggplot2)

ggplot(discrete_measure, aes(x = theta, y = w)) +
  geom_point() +
  geom_segment(aes(xend = theta), yend = 0) +
  labs(subtitle = "A random discrete probability measure")
