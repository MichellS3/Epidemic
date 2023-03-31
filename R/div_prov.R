#' Amount instance of disease by province
#'
#' @param x vector of length two (illness or disease, province)
#'
#' @return data frame with total cases by province
#' @import dplyr
#'
#' @examples
#' div_year("Malaria", Pichincha)

div_year<-function(x){
  name<-x[1]
  prov<-x[2]
  year<-x[3]
  if (year=="ALL"){
  Table01<- Table %>% filter(Provincia==prov, EVENTOS==name)
  cases_acum<-sum(Table01$Casos)
  }else{
    Table01<- Table %>% filter(Año==year,Provincia==prov, EVENTOS==name,)
    cases_acum<-sum(Table01$Casos)
    }
}

