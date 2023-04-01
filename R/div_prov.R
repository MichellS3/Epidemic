#' Amount instance of disease by province
#'
#' @param x vector of length three (illness or disease, province, year)
#'
#' @return value with total cases by province and year
#' @import dplyr
#'
#' @examples
#' div_prov("Dengue","ORELLANA", 2018)


div_prov<-function(x){
  name<-x[1]
  prov<-x[2]
  year<-x[3]
  if (year=="ALL"){
    Table01<- Table %>% filter(Provincia==prov, EVENTOS==name)
    cases_acum<-sum(Table01$Casos)
  }else{
    Table01<- Table %>% filter(Año==year,Provincia==prov, EVENTOS==name)
    cases_acum<-sum(Table01$Casos)
  }
}

