files <- list.files("./content/post/", recursive = TRUE, full.names = TRUE, pattern = "*.md")


for( file in files ) {
  con <- file( file )
  lines <- readLines( con, warn = FALSE)

  cat(file, " ")

  ln <- grep("focal",lines)

  print(lines[ln])

  close( con )
}
