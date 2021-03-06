repos <- c(
  "achubaty/amc@development",
  "cran/RandomFields", ## removed from CRAN spring 2022
  "cran/RandomFieldsUtils",
  "PredictiveEcology/CBMutils@development",
  "PredictiveEcology/fireSenseUtils@development",
  "PredictiveEcology/LandR@development",
  "PredictiveEcology/LandWebUtils@development",
  "PredictiveEcology/NetLogoR@development",
  "PredictiveEcology/map@development",
  "PredictiveEcology/pemisc@development",
  "PredictiveEcology/peutils@development",
  "PredictiveEcology/quickPlot@development",
  "PredictiveEcology/Require@development",
  "PredictiveEcology/reproducible@development",
  "PredictiveEcology/SpaDES.addins",
  "PredictiveEcology/SpaDES.core@development",
  "PredictiveEcology/SpaDES.experiment",
  "PredictiveEcology/SpaDES.install@development",
  "PredictiveEcology/SpaDES.project",
  "PredictiveEcology/SpaDES.shiny",
  "PredictiveEcology/SpaDES.tools@development",
  "PredictiveEcology/usefulFuns@development",
  "s-u/fastshp"
)
repos2 <- sapply(repos, function(x) strsplit(x, "@")[[1]][1])
branches <- sapply(repos, function(x) strsplit(x, "@")[[1]][2])
gh_prefix <- "https://github.com/"

df <- data.frame(
  package = basename(repos2),
  url = paste0(gh_prefix, repos2),
  branch = branches,
  row.names = NULL
)
jsonlite::write_json(df, 'packages.json', pretty = TRUE)
