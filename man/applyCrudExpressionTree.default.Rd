% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/crud.R
\name{applyCrudExpressionTree.default}
\alias{applyCrudExpressionTree.default}
\title{Apply access expression tree}
\usage{
\method{applyCrudExpressionTree}{default}(inst, type = c("has", "create",
  "read", "update", "delete"), envir = parent.frame(), fail_safe = FALSE,
  ...)
}
\arguments{
\item{inst}{\code{\link[base]{list}}.
TODO}

\item{type}{\code{\link[base]{character}}.
Type of expressions to apply.}

\item{envir}{\code{\link[base]{environment}}.
Environment in which to evaluate the expressions.}

\item{fail_safe}{\code{\link[base]{logical}}.
Wrap with \code{\link[base]{try}}.}

\item{...}{Further arguments to be passed to subsequent functions/methods.}
}
\value{
\code{\link[base]{expression}}.
}
\description{
Default method of \code{\link[crudr]{applyCrudExpressionTree}}.
}
\details{
TODO
}
\examples{
inst = list(a = list(b = 1))

tree <- createCrudExpressionTree(inst, c("a", "b", "c"),
  value = 1, fail_safe = TRUE)

applyCrudExpressionTree(tree, "has")
applyCrudExpressionTree(tree, "create")
inst
applyCrudExpressionTree(tree, "read")
applyCrudExpressionTree(tree, "update")
inst
## --> currently exactly identical to the `create` expression
applyCrudExpressionTree(tree, "delete")
inst
}
\author{
Janko Thyson \email{janko.thyson@rappster.de}
}
\references{
\url{http://github.com/rappster/crudr}
}
\seealso{
\code{
 \link[crudr]{createCrudExpressionTree}
}
}

