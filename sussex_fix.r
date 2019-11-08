sussex.fix <- function(){
utils::download.file(url = "https://github.com/ljcolling/sussex/releases/download/v1.0/sussex.zip",
                     destfile = "N:/Documents/sussex.zip")
utils::unzip(zipfile = "N:/Documents/sussex.zip",
             exdir = "N:/Documents/R/win-library/3.6")

cat("DONE!\n")
}
