# Algorithms and Data Structures in R

This folder contains my personal solutions to 3 foundational coding challenges from the **Algorithms and Data Structures** module of my AI Developer training. Each challenge was solved using pure R, without the aid of external libraries, to strengthen my understanding of core algorithmic thinking.

---

## Challenge 1: Bubble Sort in R

This script implements a classic **Bubble Sort algorithm** from scratch.

- Custom `bubble_sort()` function
- Accepts any numeric vector and sorts it in ascending order
- Clearly labeled logic and loop structure
- Includes original unsorted data and sorted output via `cat()`

**File:** `challenge1_bubble_sort.R`

---

## Challenge 2: Binary Search Tree (BST)

This script simulates a **Binary Search Tree (BST)** using recursive logic and simple list-based node structures.

- Built entirely in R
- Includes:
  - `createNode()` to initialize new nodes
  - `insertNode()` for recursive BST insertion
  - `searchKey()` to locate values in the tree
- Prioritizes **readable logic flow and recursion practice**

**File:** `challenge2_bst_task_priority.R`

---

## Challenge 3: Store a Tree in an Array

This challenge explores how binary trees can be stored in arrays (a.k.a. vectors in R) using indexed positions to simulate parent-child relationships.

- Implements `insert_node(index, value)`
- Mimics left/right child behavior via index math (2i, 2i+1)
- Array preallocated to length 15 for safe expansion
- Finishes by printing the full array representation of the tree

**File:** `challenge3_array_tree.R`

---

## Purpose & Progress

These challenges helped sharpen my algorithmic edge using R’s native tools—looping, indexing, recursion, and vector operations—without falling back on helper libraries. Everything here is built from the ground up and showcases practical mastery over:

- Sorting algorithms
- Recursive tree logic
- Data structure memory layout

---

## How to Run

Each `.R` script is standalone and can be run in any R environment (e.g., RStudio):

```r
source("challenge1_bubble_sort.R")
