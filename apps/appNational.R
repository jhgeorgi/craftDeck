require(rCharts)
shinyServer(function(input, output) {
output$nationalPlot <- renderChart({
     NdataDT <- as.data.frame(read.csv("national.csv"))
     p1<-rPlot(year, input$var1,data=NdataDT,type = "point")
     p1
     })
})                                        
