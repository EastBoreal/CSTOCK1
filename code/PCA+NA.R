library(tidyverse)
library(missMDA)
library(FactoMineR)
library(naniar)
cstock %>% 
  select(where(is.numeric)) %>%
  scale() %>% #scaling whole dataset to prevent big values problem
  estim_ncpPCA(., scale = TRUE)%>%
  
  cp=cstock %>% 
  select(where(is.numeric)) %>%
  scale() %>%
  imputePCA(., ncp=2, scale = TRUE) 

narm=as.data.frame(cp$completeObs)
narm %>% 
  PCA()

