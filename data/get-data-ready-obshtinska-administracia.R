# Load libraries
library(tidyverse)
library(readxl)

# База данни
load(file = "V_A_11_2020_2023.Rdata")

filterOblAdm <- V_A_11_2020_2023 %>% 
  filter(`Вид административна структура` == "Общинска администрация")

oblAdm <- filterOblAdm[, -c(2, 3)]

save(oblAdm, file = "obshtinski_administracii_2020_2023.Rdata")
