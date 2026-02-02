# scripts/render_site.R

quarto::quarto_render("index.qmd", output_format = "html")
quarto::quarto_render("practical-info.qmd", output_format = "html")
quarto::quarto_render("notes/extra/1-example-pipeline.qmd", output_format = "html")
quarto::quarto_render("notes/extra/index.qmd", output_format = "html")
quarto::quarto_render("notes/lesson-notes/index.qmd", output_format = "html")
quarto::quarto_render("notes/lesson-notes/3-data-types.qmd", output_format = "html")
quarto::quarto_render("notes/lesson-notes/1-minimal-reproducible-example.qmd", output_format = "html")
