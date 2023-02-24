Data from CSTOCK RMD 

``{r}
rename(cstock, plot = plt)
arrange(cstock, plot, type)

cstock%>%
  #group_by(plot)%>%
  


md%>%
  #group_by(plot)%>%
  mutate(smx= mean(mxdpt, ifelse(type=="soil",mean,NA))

 
  mutate(soilmx=mean(mxdpt, na.rm=T,
         littermx=mean(mxdpt, na.rm=T)
         )
  
md%>%
  arrange(factor(plot))%>%
  group_by(plot)%>%
  filter(type=="soil")%>%
  ggplot(aes(x=plot, y=mxdpt))+stat_summary(fun = mean, geom = 'bar', aes(fill= plot), colour='black', width = 0.3, position= position_dodge(0.6))+stat_summary(fun.data = mean_se, geom="errorbar", width= 0.3,position= position_dodge(0.6))#+labs( x="Площадки", y="Эмиссия, г С м-2 сут-1")+guides(color=guide_legend(title="")) +theme_classic()
#plothist2
  
  mutate(smx=mean(mxdpt))


filter(, type==soil))
  #filter(day !="0"& day !="218")  
  
  #identify_outliers(rem)
  cstock%>%
    filter(type=="litter")%>%
    ggplot(aes(x=fn40, y=mxdpt, group_by(plot), geom_point()))
  # +scale_x_discrete(labels=c("март", "май", "июнь", "июль", "август", "сентябрь", "октябрь"))+labs( x="Дата", y="Эмиссия, г С м-2 сут-1")+guides(color=guide_legend(title="")) +theme_classic()
plot1
```