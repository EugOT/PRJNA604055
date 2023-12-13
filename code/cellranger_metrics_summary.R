library(readr)
metrics_summary_SRR10992871 <- read_csv("/data/PRJNA604055/cellranger/SRR10992871/outs/metrics_summary.csv") %>% mutate(Run = "SRR10992871")
metrics_summary_SRR10992872 <- read_csv("/data/PRJNA604055/cellranger/SRR10992872/outs/metrics_summary.csv") %>% mutate(Run = "SRR10992872")
metrics_summary_SRR10992873 <- read_csv("/data/PRJNA604055/cellranger/SRR10992873/outs/metrics_summary.csv") %>% mutate(Run = "SRR10992873")
metrics_summary_SRR10992874 <- read_csv("/data/PRJNA604055/cellranger/SRR10992874/outs/metrics_summary.csv") %>% mutate(Run = "SRR10992874")
metrics_summary_SRR10992875 <- read_csv("/data/PRJNA604055/cellranger/SRR10992875/outs/metrics_summary.csv") %>% mutate(Run = "SRR10992875")
metrics_summary_SRR10992876 <- read_csv("/data/PRJNA604055/cellranger/SRR10992876/outs/metrics_summary.csv") %>% mutate(Run = "SRR10992876")
metrics_summary <-
  bind_rows(
    metrics_summary_SRR10992871,
    metrics_summary_SRR10992872,
    metrics_summary_SRR10992873,
    metrics_summary_SRR10992874,
    metrics_summary_SRR10992875,
    metrics_summary_SRR10992876)

metrics_summary |>
  select("Estimated Number of Cells", "Run")

write_tsv(metrics_summary, here("metrics_summary.tsv"))

