#'Graphs visual
#'
#'A visual of the species weight by year
#'
#'@param name of function used to filter data
#'@return plot of surveys data
#'@export surveys_plot(output)



output <- surveys_weight_by_year(surveys)
 weight_year_plot <- ggplot(data = output, mapping = aes(x = year, y = mean_weight, color = species_id)) +geom_line ()
 weight_year_plot

weight_year_plot
 surveys_plot <- function(output){
  + output <- ggplot(data = output, mapping = aes(x = year, y = mean_weight, color = species_id)) +geom_line ()
  + return(output)
  + }
 surveys_plot(output)