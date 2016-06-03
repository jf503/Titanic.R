# titanic is avaliable in your workspace

# look at stcuture of titanic and names of col 
str(titanic)
names(titanic)

# Use ggplot to examine the distrubution of gender/sex within each class of the ship. The independent variable is class and the dependent var is sex/gender
#Use 'dodge" to prevent overlaping beteen the class type

ggplot(titanic, aes(x = factor(Pclass), fill = factor(Sex))) + 
  geom_bar(position = "dodge")

# This one is expanding on the class and sex bar graph by examining how likely one is to survive in each class based on gender/sex
#Facinting allows for the data to be broken into multiple categories (survived and not)
ggplot(titanic, aes(x = factor(Pclass), fill = factor(Sex))) + 
  geom_bar(position = "dodge") + 
  facet_grid(. ~ Survived)

# defining the position of jitter will allow us to define position in the next plot
posn.j <- position_jitter(0.5, 0)

# This plot we color the plot based on the factorization of Sex, and add a geom_jitter and again add the facet. The color allows for  better visualization of gender
ggplot(titanic, aes(x = factor(Pclass), y = Age, col = factor(Sex))) + 
  geom_jitter(size = 3, alpha = 0.5, position = posn.j) + 
  facet_grid(. ~ Survived)