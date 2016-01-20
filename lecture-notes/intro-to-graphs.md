# Introduction to Graphs

* Graphs can be considered the aggregate of multiple Bernoulli trials. That is, they could be the result or a series of outcomes from a dynamic process.

## How Graphs are Stored on a Computer

* Either as an "edge list" or an "adjacency matrix."
* Most graphs are sparse (the adjacency matrix has a lot of zeroes); e.g., most people are not friends with most people.
* Adjacency matrices consume more memory than is needed with sparse matrices.
* Undirected matrices are symmetric. Symmetric matrices have properties favorable for manipulation in linear algebra, so undirected graphs are very common.
