% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/read_vv.R
\name{read.vv}
\alias{read.vv}
\title{Read vv binary file.}
\usage{
read.vv(filepath)
}
\arguments{
\item{filepath}{string. Full path to the input vv file.}
}
\value{
list of vectors, the data. The vv files may can store double or int, which is encoded in the file header and used accordingly.
}
\description{
Read matrix-like data from vv files. This is a custom format from the cpp_geodesic repo, designed to allow fast reading of vector-of-vectors data. The format does NOT require that all inner vectors have the same length, so it is NOT limited to matrices. The format is designed for storing graphs as adjacency lists.
}
