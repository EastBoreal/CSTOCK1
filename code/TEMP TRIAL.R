##Title: This is script reproduced from https://youtu.be/fskblEWSeWU

library(tidyverse)
read_csv("D:/R/CSTOCK1/data/NH.Ts+dSST.csv", skip=1, na="***")# we read data from our project folder which are previously putted there
# we skip 1 row as it contains some text which is not necessary for our data set.
read_csv("D:/R/CSTOCK1/data/NH.Ts+dSST.csv", skip=1, na="***")%>%
  select(year=Year, t_diff='J-D')%>%
  ggplot(aes(x=year, y=t_diff))+
  geom_line(aes(color="1"), size=0.5, show.legend = F)+
  geom_point(fill='white', aes(color="1"), size=3, shape=21, show.legend = T)+
  geom_smooth(se=FALSE, aes(color="2"), size=0.5, span=0.15, show.legend = F)+
  scale_x_continuous(breaks =seq(1880, 2023, 20), expand=c(0,0))+
  scale_y_continuous(limits=c(-0.6, 1.5), expand=c(0,0))+
  scale_color_manual(name=NULL,
                     breaks=c(1, 2),
                     values = c("gray", "black"),
                     labels=c("Annual mean", "Lowess smoothing"),
                     guide= guide_legend(override.aes = list(shape=15, size=5)))+
  labs(
  x= "YEAR",
  y= "Temperature anomaly (C)",
  title = "Land-Ocean: Northern Hemispheric Means",
  subtitle = "Data source: NASA's Goddard Institute for Space Studies(GISS).\nCredit: NASA/GISS"
  )+
  theme_light()+
  theme(
  axis.ticks = element_blank(),
  plot.title.position = "plot",
  plot.title = element_text(margin=margin(b=10), color = "red", face="bold"),
  plot.subtitle = element_text(size=8, margin=margin(b=10)),
  legend.position = c(0.15, 0.9),
  legend.title= element_text(size=0),
  legend.key.height =unit(10, "pt"),
  legend.margin = margin(0,0,0,0),
  )
ggsave("figures/temp_nasa.png", width = 6, height=4)
 # =============================================================================================================
# ___________________________________________________________________________________________________________
# By the example above create figure on Januaries difference from the average  
read_csv("data/NH.Ts+dSST.csv", skip=1, na="***")%>%
  select(year=Year, j_diff=Jan)%>%
  ggplot(aes(x=year, y=j_diff))+
  geom_line(aes(color="1"), size=0.5, show.legend = F)+
  geom_point(fill='white', aes(color="1"), size=3, shape=21, show.legend = T)+
  geom_smooth(se=FALSE, aes(color="2"), size=0.5, span=0.05, show.legend = F)+
  scale_x_continuous(breaks =seq(1880, 2000, 20, 2001, 2023, 1), expand=c(0,0))+
  scale_y_continuous(limits=c(-0.6, 1.5), expand=c(0,0))+
  scale_color_manual(name=NULL,
                     breaks=c(1, 2),
                     values = c("gray", "black"),
                     labels=c("Annual mean", "Lowess smoothing"),
                     guide= guide_legend(override.aes = list(shape=15, size=5)))+
  labs(
    x= "YEAR",
    y= "Temperature anomaly (C)",
    title = "Land-Ocean: Northern Hemispheric Means",
    subtitle = "Data source: NASA's Goddard Institute for Space Studies(GISS).\nCredit: NASA/GISS"
  )+
  theme_light()+
  theme(
    axis.ticks = element_blank(),
    plot.title.position = "plot",
    plot.title = element_text(margin=margin(b=10), color = "red", face="bold"),
    plot.subtitle = element_text(size=8, margin=margin(b=10)),
    legend.position = c(0.15, 0.9),
    legend.title= element_text(size=0),
    legend.key.height =unit(10, "pt"),
    legend.margin = margin(0,0,0,0),
  )
ggsave("figures/temp_nasa.png", width = 6, height=4)
