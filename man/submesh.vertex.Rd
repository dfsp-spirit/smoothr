% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/submesh.R
\name{submesh.vertex}
\alias{submesh.vertex}
\title{Create a submesh including only the given vertices.}
\usage{
submesh.vertex(surface_mesh, old_vertex_indices_to_use, ret_mappings = FALSE)
}
\arguments{
\item{surface_mesh}{an \code{fs.surface} instance, the original mesh. See \code{\link[freesurferformats]{read.fs.surface}} or \code{\link[fsbrain]{subject.surface}} to get one. Can also be an rgl tmesh, see \code{\link[rgl]{tmesh3d}}.}

\item{old_vertex_indices_to_use}{integer vector, the vertex indices of the 'surface_mesh' that should be used to construct the new sub mesh.}

\item{ret_mappings}{whether to return the vertex mappings. If \code{TRUE}, the return value becomes a list with entries 'submesh', 'vmap_full_to_submesh', and 'vmap_submesh_to_full'.}
}
\value{
the new mesh, made up of the given 'old_vertex_indices_to_use' and all (complete) faces that exist between the query vertices in the source mesh. But see 'ret_mapping' parameter.
}
\description{
Create a submesh including only the given vertices.
}
\examples{
\dontrun{
if(requireNamespace("fsbrain, quietly=T")) {
sjd = fsbrain::fsaverage.path(T);
sj = "fsaverage";
mesh = fsbrain::subject.surface(sjd, sj, hemi="lh");
lab = fsbrain::subject.label(sjd, sj, "cortex", hemi = "lh");
sm = submesh.vertex(mesh, lab);
fsbrain::vis.fs.surface(mesh); # show the full mesh.
fsbrain::vis.fs.surface(sm);   # show only the cortex.
}}

}
