# Load libraries
library(tidyverse)
library(readxl)

# Create variables for every year

V_A_11_2020 <- read_excel("iisda/all/V.A/V.А.11.2020.xlsx", 
                          sheet = "Справка")
V_A_11_2021 <- read_excel("iisda/all/V.A/V.А.11.2021.xlsx", 
                          sheet = "Справка")
V_A_11_2022 <- read_excel("iisda/all/V.A/V.А.11.2022.xlsx", 
                          sheet = "Справка")
V_A_11_2023 <- read_excel("iisda/all/V.A/V.А.11.2023.xlsx", 
                          sheet = "Справка")


# Join all variables in one

V_A_11_2020_2023 <- bind_rows(V_A_11_2023,
                              V_A_11_2022,
                              V_A_11_2021,
                              V_A_11_2020
                              )

V_A_11_all <- bind_rows(V_A_11_2023,
                        V_A_11_2022,
                        V_A_11_2021,
                        V_A_11_2020
                        )

glimpse(V_A_11_all)

# Save the variable into Rdata file in data folder

save(V_A_11_2020, file = "V_A_11_2020.Rdata")
save(V_A_11_2021, file = "V_A_11_2021.Rdata")
save(V_A_11_2022, file = "V_A_11_2022.Rdata")
save(V_A_11_2023, file = "V_A_11_2023.Rdata")

save(V_A_11_all, file = "V_A_11_all.Rdata")
save(V_A_11_2020_2023, file = "V_A_11_2020_2023.Rdata")
