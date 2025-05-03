# Binary Search Tree
# Lower values = lower urgency tasks
# Higher values = critical tasks
# insert/search functions become a way to triage what's important

# Define the task node structure
createTaskNode <- function(priority) {
  list(priority = priority, left = NULL, right = NULL)
}

# Insert a new task in the tree by priority
insertTask <- function(root, priority) {
  if (is.null(root)) {
    return(createTaskNode(priority))
  }
  
  if (priority < root$priority) {
    root$left <- insertTask(root$left, priority)
  } else {
    root$right <- insertTask(root$right, priority)
  }
  
  return(root)
}

# Search for a task in the tree by priority
searchTask <- function(root, priority) {
  if (is.null(root) || root$priority == priority) {
    return(root)
  }
  
  if (priority < root$priority) {
    return(searchTask(root$left, priority))
  } else {
    return(searchTask(root$right, priority))
  }
}

# Test the task prioritizer
taskTree <- NULL # Start with an empty list

priorities <- c(3, 7, 2, 5, 1, 6)
for (p in priorities) {
  taskTree <- insertTask(taskTree, p)
}

# Try searching for tasks
foundTask <- searchTask(taskTree, 5)
if (!is.null(foundTask)) {
  cat("Task with priority", foundTask$priority, "found!\n")
} else {
  cat("Task not found.\n")
}

notFound <- searchTask(taskTree, 10)
if (is.null(notFound)) {
  cat("Priority 10 not in the task list.\n")
}