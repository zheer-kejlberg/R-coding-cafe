library(dplyr)
timeline_raw <- tribble(
  ~Date, ~T_start, ~T_end, ~Location, 
  ~Presenter, ~Topic, ~Note_URL, ~Helpers,
  
  "2026-01-13", "10:00:00 AM", "12:00:00 PM", "Hjørnerummet (A401-109)", 
  "Zheer", "Introduction and planning of format", NA_character_, "-",
  
  "2026-01-27", "10:00:00 AM", "11:30:00 AM", "Hjørnerummet (A401-109)", 
  "Zheer", "How to ask for help: The minimal reproducible example and making simulated data", "notes/lesson-notes/01-Minimal-Reproducible-Example.html", "-",
  
  "2026-02-18", "10:00:00 AM", "11:30:00 AM", "Hjørnerummet (A401-109)", 
  "Zheer", "Prevention and diagnosis of errors in R", NA_character_, "-", 
  
  "2026-02-24", "10:00:00 AM", "11:30:00 AM", "Hjørnerummet (A401-109)", 
  "Zheer", "Types of data (object, classes)", NA_character_, "-", 
  
  "2026-03-10", "10:00:00 AM", "11:30:00 AM", "Hjørnerummet (A401-109)", 
  "Zheer", "Writing functions instead of copy/paste", NA_character_, "-", 
  
  "2026-03-24", "10:00:00 AM", "11:30:00 AM", "Hjørnerummet (A401-109)", 
  "Zheer", "Loops, recursion, parallelisation", NA_character_, "-", 
  
  "2026-04-07", "10:00:00 AM", "11:30:00 AM", "Hjørnerummet (A401-109)", 
  "Zheer", "Paradigms: Base R vs. Tidyverse vs. data.table", NA_character_, "-", 
  
  "2026-04-21", "10:00:00 AM", "11:30:00 AM", "Hjørnerummet (A401-109)", 
  "Zheer", "More tidyverse", NA_character_, "-", 
  
  "2026-05-05", "10:00:00 AM", "11:30:00 AM", "Hjørnerummet (A401-109)", 
  "Zheer", "Handling many packages—and cross-package workflows", NA_character_, "-", 
  
  "2026-05-19", "10:00:00 AM", "11:30:00 AM", "Hjørnerummet (A401-109)", 
  "Zheer", "Moving between R and Stata", NA_character_, "-", 
  
  "2026-06-02", "10:00:00 AM", "11:30:00 AM", "Hjørnerummet (A401-109)", 
  "Zheer", "Markdown basics: Using Quarto and Rmarkdown", NA_character_, "-", 
  
  "2026-06-16", "10:00:00 AM", "11:30:00 AM", "Hjørnerummet (A401-109)", 
  "Zheer", "Database formats (parquet and more)", NA_character_, "-",
  
  "2026-06-17", "01:00:00 AM", "01:00:00 PM", "", 
  "", "Intermezzo", NA_character_, "",
  
  "2026-08-11", "10:00:00 AM", "11:30:00 PM", "", 
  "", "TBA", NA_character_, ""
  
) |>
  dplyr::mutate(
    Passed = dplyr::case_when(Date > lubridate::today() ~ "Planned", 
                              Date == lubridate::today() ~ "Today",
                              Date < lubridate::today() ~ "Previous"),
    Week = Date |> strftime("%V"))