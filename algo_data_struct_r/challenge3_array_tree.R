# Challenge 3: Store a Tree in an Array (Binary Tree via Vector Indexing)

# Initialize an empty vector to represent the tree
tree <- vector(mode = "numeric", length = 15) # pre-allocate space for simplicity

# Function to insert a node at the correct binary tree position
insert_node <- function(index, value) {
  if (index > length(tree)) {
    warning("Index exceeds tree capacity.")
    return()
  }
  tree[index] <<- value
}

# Insert nodes using binary tree indexing
insert_node(1, 5) # Root
insert_node(2, 3) # Left child of 5
insert_node(3, 8) # Right child of 5
insert_node(4, 2) # Left child of 3
insert_node(5, 4) # Right child of 3
insert_node(6, 7) # Left child of 8

# Print tree vector
cat("Binary Tree (Array Representation:\n")
print(tree)