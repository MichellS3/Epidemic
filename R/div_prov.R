#' Title
#'
#' @param x
#'
#' @return
#' @export
#'
#' @examples
div_prov<-function(x){
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
