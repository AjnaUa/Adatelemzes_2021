library (tidyverse)

# a <- data.frame(x=1,y=2,z=3)
# colnames (a) <- stringr::str_subset (list.files () , ".Rmd")
# a %>%
#   select (str_subset (to_knit , "index") , everything())

str_subset (list.files () , ".Rmd") %>%
  walk (rmarkdown::render)

