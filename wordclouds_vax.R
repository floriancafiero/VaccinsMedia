# Install necessary packages
install.packages("readr")
install.packages("wordcloud")
install.packages("tm")

# Load packages
library(readr)
library(wordcloud)
library(tm)

# Specify the path of your file
file_path <- "path/to/your/file.csv"

# Read the file into R
df <- read_csv(file_path)

# Create word cloud
wordcloud(words = df$term, freq = df$count, min.freq = 1,
          max.words=200, random.order=FALSE, rot.per=0.35, 
          colors=brewer.pal(8, "Dark2"))
