% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/point.R
\name{point}
\alias{point}
\title{point class}
\usage{
point(x)
}
\arguments{
\item{x}{input}
}
\description{
point class
}
\examples{
x <- '{ "type": "Point", "coordinates": [100.0, 0.0] }'
(y <- point(x))
geo_type(y)
geo_pretty(y)
geo_write(y, f <- tempfile(fileext = ".geojson"))
jsonlite::fromJSON(f, FALSE)
unlink(f)

# add to a data.frame
library('tibble')
data_frame(a = 1:5, b = list(y))

# as.geojson coercion
as.geojson(x)
}
