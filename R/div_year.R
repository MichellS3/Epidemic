#' Amount instance of disease by year
#'
#' @param x vector of length two (illness or disease, year)
#'
#' @return data frame with total cases by year
#' @import dplyr
#'
#' @examples
#' z=c("Malaria",2016)
#' div_year(z)

div_year<-function(x){
  name<-x[1]
  year<-x[2]
  Table01<- Table %>% filter(Año==year, EVENTOS==name)
  cases_acum<-sum(Table01$Casos)
  cases_acum
}


