#' Principal measures of disease cases by epidemiological week
#'
#' @param SEe Epidemiological week
#'
#' @return Total cases in this epidemiological week
#' @import dplyr
#'
#' @examples
#' For this is necessary a data frame with an specifically disease and year.
#' div_week(53)

div_week<-function(SEe){
  Table01 <- Table %>% filter (SE==SEe)
  cases_acum<-sum(Table01$Casos)
  cases_acum
}
