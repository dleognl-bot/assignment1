set.seed(1)
n = 200
x = seq(0, 1, length.out = n)
y = sin(2*pi*x) + rnorm(n, sd = 0.15)

write.csv(data.frame(x, y), "data/example_data.csv", row.names = FALSE)

library(ggplot2)
df_loaded = read.csv("data/example_data.csv")
head(df_loaded)

p = ggplot(df_loaded, aes(x = x, y = y)) + geom_point() + geom_smooth(method = "loess")
print(p)

ggsave("plots/problem1_plot.png", plot = p)
