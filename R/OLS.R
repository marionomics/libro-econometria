library(ggplot2)
library(dplyr)

n <- 10000
df <- data.frame(x = rnorm(n))
df$y <- 1.2 * df$x + 2*rnorm(n)

plot1 <- df %>%
    ggplot(aes(x = x, y = y))+
    geom_point(alpha = 0.5)+
    geom_smooth(method = "lm")+
    theme_light()

ggsave("~/graphics", plot1, device = "png")
