# Run this interactively as needed to update toc.csv. Should rarely be necessary.

googlesheets4::read_sheet(
  "1a99WLm0v6GsSGEwmo2EJ8F6p_9TFpZ4UWRNwVKCX7RE",
  range = "A2:C",
  col_names = c("part", "number", "title"),
  col_types = "c"
) |> 
  dplyr::filter(!is.na(.data$part)) |> 
  dplyr::mutate(number_wide = stringr::str_pad(.data$number, 2, pad = "0")) |> 
  readr::write_csv("toc.csv")
