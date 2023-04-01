#' Graphic representation of a disease per year
#'
#' @param x value of disease ("Malaria")
#'
#' @return bar graphic of frecuenciy of a disease per year
#' @import ggplot2
#'
#' @examples plot_diss("Malaria")

plot_diss<-function(x){
  years<-unique(Table$Año)
  frecuency<-numeric()
  for(i in 1:length(years)){
    year<-years[i]
    Table01<- Table %>% filter(EVENTOS==x,Año==year)
    acum<-sum(Table01$Casos)
    frecuency<-c(frecuency,acum)
  }
  df<-data.frame(years=years,frecuency=frecuency)
  fig<-ggplot(df,aes(x=years, y=frecuency,fill=as.factor(years)))+
    geom_bar(stat="identity")+
    scale_fill_brewer(palette = "Set2")+
    theme_minimal()+
    scale_x_continuous(breaks = c(2013:2019))+
    theme(axis.text =element_text(size=10),
          axis.title = element_text(size=10, face = "bold"),
          plot.margin = margin(t=2, l=2, r=2, b=2, unit = "mm"))+
    theme(legend.position = "none")
  fig
}

