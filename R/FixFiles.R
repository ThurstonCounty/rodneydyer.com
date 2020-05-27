files <- list.files("./content/post/", recursive = TRUE, full.names = TRUE, pattern = "*md$")


for( file in files ) {
  con <- file( file )
  lines <- readLines( con, warn = FALSE)
  ln <- grep("image:",lines)

  if( length(ln) > 0 ) {
    cat(file, " ", lines[ln], "\n")
  }

  close( con )
}
