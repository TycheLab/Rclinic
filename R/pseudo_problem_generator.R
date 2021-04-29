words <- scan(file = "R_problem.Rmd",
              what = "character")
words <- gsub(pattern = "\\-|\\(|\\)|\\#|\\`|\\:|\\'", 
              replacement = NA, 
              x = words)
words <- gsub(pattern = " ", 
              replacement = "_", 
              x = words)
words <- na.omit(object = words)
words <- tolower(x = words)

filenames <- lapply(X = 1:75, 
                    FUN = function(x) {
                      
                      paste(sample(x = words,
                                   size = 4),
                            collapse = "_")
                    })

file.copy(from = "R_problem.Rmd",
          to = paste0("R_problems/", filenames, ".Rmd"))
