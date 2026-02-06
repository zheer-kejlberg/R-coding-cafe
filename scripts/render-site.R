# scripts/render_site.R
Sys.setlocale("LC_ALL", "en_US.UTF-8")
quarto::quarto_render(".", output_format = "html")
