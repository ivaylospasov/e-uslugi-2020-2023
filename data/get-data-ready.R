# Load libraries
library(tidyverse)
library(readxl)

# Зареждане на базата данни
load(file = "V_A_11_2020_2023.Rdata")

# Филтриране, за да останат само общинските администрации

obshtinski_administracii <- V_A_11_all %>% 
  filter(`Вид административна структура` == "Общинска администрация")

# Премахване на колоните 
# "Вид администрация на изпълнителната власт" и
# "Вид административна структура"

obshtinski_administracii <- obshtinski_administracii[, -c(2, 3)]

# Запазване на базата данни във файл

save(obshtinski_administracii, file = "obshtinski_administracii_2020_2023.Rdata")
