#'Queries data from surveys
#'
#'Each species is pulled and filtered by mean weight and by year
#'
#'@param a list containing the species id and their mean weight
#'@return mean weight
#'@export surveys_weight_by_year

surveys_weight_by_year <-function(surveys){
   mean_weight <- surveys %>% 
     filter(!is.na(weight)) %>% 
     group_by(year,species_id) %>% 
     summarize(mean_weight =mean(weight))
   return(mean_weight)
   }

