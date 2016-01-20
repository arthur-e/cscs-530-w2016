## How Graphs are Stored on a Computer

* Most graphs are sparse (the adjacency matrix has a lot of zeroes); e.g., most people are not friends with most people.
* Adjacency matrices consume more memory than is needed with sparse matrices.
* Undirected matrices are symmetric, e.g.,

  | A  | B  | C
  | -- | -- | --
A | 0  | 1  | 0
B | 1  | 0  | 1
C | 0  | 1  | 0

* The advantage of an adjacency matrix 
