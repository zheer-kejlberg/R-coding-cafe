# scripts/render_site.R


cat("Working directory:", getwd(), "\n")

# Render multiple formats of the same document
quarto::quarto_render("index.qmd", output_format = "html")
quarto::quarto_render("practical-info.qmd", output_format = "html")
quarto::quarto_render("notes.qmd", output_format = "html")
quarto::quarto_render("notes/minimal-reproducible-example.qmd", output_format = "html")
