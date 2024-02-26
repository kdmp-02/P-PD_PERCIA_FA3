# Problem 1

# Probability of receiving a 1 when a 0 is transmitted
p_1_0 <- 1 - 0.95

# Probability of receiving a 0 when a 1 is transmitted
p_0_1 <- 1 - 0.75

#Probability of transmitting a 0
p_0 <- 0.70

#Probability of transmitting a 1
p_1 <- 1 - p_0

# (a)
p_1_received <- p_1_0 * p_0 + (1 - p_0_1) * (p_1)

cat("(a) Probability that a 1 was received : ", p_1_received, "\n")

# (b)
p_1_1 = (1 - p_0_1) * (p_1) / p_1_received

cat("(b) Probability that a 1 was transmitted given that 1 was received : ", p_1_1, "\n\n")


#Problem 2

prog_dist <- c(0.10, 0.30, 0.60)
error_dist <- c(0.08, 0.05, 0.01)

# (a) Overall percentage error
overall_error <- sum(prog_dist * error_dist)

cat("(a) Overall percentage of error : ", overall_error * 100, "\n")

# (b) Most likely person to have written a program with an error 
most_likely <- which.max(prog_dist * error_dist)

cat("(b) Most likely person to have written a program with an error is : ", c("Jane","Amy","Ava")[most_likely], "\n")