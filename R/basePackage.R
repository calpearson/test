# Hello, world!
#
# This is an example function named 'hello'
# which prints 'Hello, world!'.
#
# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Install Package:           'Ctrl + Shift + B'
#   Check Package:             'Ctrl + Shift + E'
#   Test Package:              'Ctrl + Shift + T'

# Packages you will need prior to this




#......................................................................................
# Function 1
#......................................................................................
# left and right function
right = function (string, char) {substr(string,nchar(string)-(char-1),nchar(string))}
left = function (string,char) {substr(string,1,char)}

#......................................................................................
# Function 2
#......................................................................................

# cal_auto_dedupe
# this function is an auto dedupe that will just dedupe leaving the first duplicate in so there are no duplicates
cal_auto_dedupe <- function(df) {
  df <- df %>%
    mutate(dupe = duplicated(.)) %>%
    filter(dupe == F) %>%
    select(-dupe)
}
#......................................................................................
