#' Create Dockerfile from `_targets.R`
#'
#' @param path path to an `_targets.R` file to use as input
#' @param FROM Docker image to start FROM
#' @param repos Repository to use inside the Dockerfile (default CRAN)
#'
#' @return
#' @export
#' @importFrom fs path_abs
#' @importFrom renv dependencies
#' @examples
dock_from_targets <- function(
  path = "_targets.R",
  FROM = "rocker/tidyverse",
  repos = c(CRAN = "https://cran.rstudio.com/")
) {
  path <- path_abs(path)
  deps <- dependencies(path)
  deps
}
