## ---- echo=FALSE---------------------------------------------------------
is_on_travis = identical(Sys.getenv("TRAVIS"), "true")
is_online = curl::has_internet()

## ---- message=FALSE, eval=is_online--------------------------------------
install.packages("spDataLarge", repos = "https://nowosad.github.io/drat/",
                 type = "source")
devtools::install_github("geocompr/geocompkg")

## ---- eval=FALSE---------------------------------------------------------
## bookdown::render_book("index.Rmd") # to build the book
## browseURL("_book/index.html") # to view it

## ----contrib-preface, include=FALSE--------------------------------------
contributors = readr::read_csv("extdata/contributors.csv")
c_txt = contributors$name
c_url = contributors$link
c_rmd = paste0("[", c_txt, "](", c_url, ")")
contributors_text = paste0(c_rmd, collapse = ", ")

