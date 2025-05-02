# Bubble Sort Algorithm

bubble_sort <- function(vec) {
  n <- length(vec)
   for (i in 1:(n-1)) {
     for (j in 1:(n-i)) {
       if (vec[j] > vec[j+1]) {
         # Swap 
         temp <- vec[j]
         vec[j] <- vec[j+1]
         vec[j+1] <- temp
       }
     }
   }
   return(vec)
}

# Try it out
original <- c(8, 3, 7, 2, 9, 4)
sorted <- bubble_sort(original)
cat("Original vector:", original, "\n")
cat("Sorted vector:", sorted, "\n")
