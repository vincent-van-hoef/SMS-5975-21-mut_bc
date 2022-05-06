library(dplyr)
library(ggplot2)

covf <- list.files(pattern = ".cov$")

all <- lapply(covf, function(x) read.csv(x, sep = "\t", header = FALSE))
names(all) <- gsub("\\..*", "", covf)
all_cov <- dplyr::bind_rows(all, .id = "Sample")


ggplot(all_cov, aes(x=reorder(Sample, V5, FUN = median), y=V5)) +
  geom_boxplot(outlier.shape = NA, coef = 0) + 
  ylim(y = c(0,1000)) + 
  xlab("Sample") +
  ylab("Average Sequencing Depth (per target)") +
  theme_classic() +
  theme(axis.text.x = element_blank(),
        axis.text=element_text(size=18),
        axis.title=element_text(size=18,face="bold"))
ggsave("Coverage_Plot.svg")

all_cov %>%
  group_by(Sample) %>%
  summarise(avg_cov = mean(V5)) %>%
  arrange(avg_cov)
# Sample 224, 28 and 2 rather low coverage