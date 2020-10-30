# generate a sample of org_codes
library(NHSRdatasets)
org<-unique(ae_attendances$org_code)

# select the first 10
org<-org[1:3]


# make report for each selected org_code 



for (i in 1:length(org)) {
  this_org <- org[i]
  outfile <- paste0(this_org, ".doc")
  rmarkdown::render("Report_without_answers.Rmd", 
                    params = list(org = this_org),
                    output_format = rmarkdown::word_document(toc = TRUE),
                    output_file = outfile)
}





