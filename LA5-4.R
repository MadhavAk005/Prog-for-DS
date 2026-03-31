# Install and load required libraries
if (!require(ggplot2)) install.packages("ggplot2")
if (!require(plotly)) install.packages("plotly")

library(ggplot2)
library(plotly)

# Load Iris dataset
data(iris)

# 1. Static Visualization using ggplot2
p <- ggplot(iris, aes(x = Sepal.Width, y = Petal.Width, color = Species)) +
  geom_point(size = 3) +
  labs(
    title = "Sepal Width vs Petal Width",
    x = "Sepal Width",
    y = "Petal Width"
  ) +
  theme_minimal()

# Display static plot
print(p)

# 2. Convert Static Plot to Interactive
interactive_plot_ggplot <- ggplotly(p)

# Display interactive ggplotly plot
interactive_plot_ggplot

# 3. Interactive Visualization using plot_ly()
interactive_plot_plotly <- plot_ly(
  data = iris,
  x = ~Sepal.Width,
  y = ~Petal.Width,
  color = ~Species,
  type = "scatter",
  mode = "markers"
) %>%
  layout(
    title = "Iris Data Set Visualization",
    xaxis = list(
      title = "Sepal Width",
      ticksuffix = " cm"
    ),
    yaxis = list(
      title = "Petal Width",
      ticksuffix = " cm"
    )
  )

# Display plotly interactive plot
interactive_plot_plotly
