library(tidyverse)
library(dplyr)
library(dslabs)
data(murders)
murders <- mutate(murders, rate = total / population * 10^5)

# minimum, median, and maximum murder rate for the states in the West region
s <- murders %>% 
  filter(region == "West") %>%
  summarize(minimum = min(rate), 
            median = median(rate), 
            maximum = max(rate))
s

# accessing the components with the accessor $
s$median
s$maximum

# average rate unadjusted by population size
mean(murders$rate)

# average rate adjusted by population size
us_murder_rate <- murders %>% 
  summarize(rate = sum(total) / sum(population) * 10^5)
us_murder_rate

library(tidyverse)
library(dplyr)
library(dslabs)
data(murders)
murders <- mutate(murders, rate = total / population * 10^5)

# minimum, median, and maximum murder rate for the states in the West region using quantile
# note that this returns a vector
murders %>% 

library(tidyverse)
library(dplyr)
library(dslabs)
data(murders)
murders <- mutate(murders, rate = total / population * 10^5)

# average rate adjusted by population size
us_murder_rate <- murders %>% 
  summarize(rate = sum(total) / sum(population) * 10^5)
us_murder_rate

# us_murder_rate is stored as a data frame
class(us_murder_rate)

# the pull function can return it as a numeric value
us_murder_rate %>% pull(rate)

# using pull to save the number directly
us_murder_rate <- murders %>% 
  summarize(rate = sum(total) / sum(population) * 10^5) %>%
  pull(rate)
us_murder_rate

# us_murder_rate is now stored as a number
class(us_murder_rate)
  filter(region == "West") %>%
  summarize(range = quantile(rate, c(0, 0.5, 1)))

# returning minimum, median, and maximum as a data frame
my_quantile <- function(x){
  r <-  quantile(x, c(0, 0.5, 1))
  data.frame(minimum = r[1], median = r[2], maximum = r[3]) 
}
murders %>% 
  filter(region == "West") %>%
  summarize(my_quantile(rate))
