files <- list.files("./content/publication/", recursive = TRUE, full.names = TRUE, pattern = "*.md")


for( file in files ) {
  con <- file( file )
  lines <- readLines( con )

  cat(file)

  ln <- grep("^publication_types",lines)

  print(lines[ln])

  close( con )
}
