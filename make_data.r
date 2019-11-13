#---- CREATING SOME DATA ----- #
suppressMessages(library(tidyverse))
set.seed(1)
id = paste0("s",sprintf(fmt = "%.2d", seq(1,40)))
group = runif(40) %>% map_chr(function(x) ifelse(x < .5, "group_01","group_02"))
congru = rnorm(40, 800, sd = 20)
incong = rnorm(40, 1000, sd = 20)
tibble(id = id, group = group, incong = incong, congru = congru) %>% gather(condition, value = rt, -group,-id) %>% arrange(id) -> sample_tib
#---- FINISHED CREATING DATA ----- #
