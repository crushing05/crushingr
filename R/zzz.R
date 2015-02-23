.onLoad <- function(libname="crushingr", pkgname="crushingr"){
  options(digits=4)
  library(ggplot2)
  theme_clark <- function(base_size = 12, base_family = "") {
    theme(
      # Elements in this first block aren't used directly, but are inherited
      # by others
      line =               element_line(colour = "black", size = 0.5, linetype = 1,
                                        lineend = "butt"),
      rect =               element_rect(fill = "white", colour = "black", size = 0.5, linetype = 1),
      text =               element_text(family = base_family, face = "plain",
                                        colour = "black", size = base_size,
                                        hjust = 0.5, vjust = 0.5, angle = 0, lineheight = 0.9),
      axis.text =          element_text(size = rel(0.8), colour = "grey30"),
      axis.title=          element_text(colour = "grey10", vjust=0.35),
      strip.text =         element_text(size = rel(0.8)),

      axis.line =          element_line(size=.7, color = "black"),
      axis.text.x =        element_text(size = base_size*1.4 , lineheight = 0.9),
      axis.text.y =        element_text(size = base_size*1.4, lineheight = 0.9),
      axis.ticks =         element_line(colour = "black", size = 0.2),
      axis.title.x =       element_text(size = base_size*1.7, vjust = 0.3),
      axis.title.y =       element_text(size = base_size*1.7, angle = 90, vjust = 1),
      axis.ticks.length =  grid::unit(0.3, "lines"),
      axis.ticks.margin =  grid::unit(0.5, "lines"),

      legend.background =  element_rect(colour = NA),
      legend.margin =      grid::unit(0.2, "cm"),
      legend.key =         element_rect(colour = "grey80"),
      legend.key.size =    grid::unit(1.2, "lines"),
      legend.key.height =  NULL,
      legend.key.width =   NULL,
      legend.text =        element_text(size = base_size * 0.8),
      legend.text.align =  NULL,
      legend.title =      element_blank(),
      legend.title.align = NULL,
      legend.position =    "right",
      legend.direction =   NULL,
      legend.justification = "center",
      legend.box =         NULL,

      panel.background =   element_rect(fill = "white", colour = NA),
      panel.border =       element_rect(fill=NA, color="grey80",size=.5),
      panel.grid.major =   element_blank(),
      panel.grid.minor =   element_blank(),
      panel.margin =       grid::unit(0.25, "lines"),
      panel.margin.x =     NULL,
      panel.margin.y =     NULL,

      strip.background =   element_rect(fill = NA, colour = NA),
      strip.text.x =       element_text(size = base_size),
      strip.text.y =       element_text(size = base_size, angle = -90),

      plot.background =   element_rect(colour = NA),
      plot.title =        element_text(size = base_size * 1.7, face="bold",vjust=2),
      plot.margin =       grid::unit(c(1, 1.5, 0.8, 0.8), "lines"),

      complete = TRUE
    )
  }
  theme_set(theme_clark())
  scale_colour_discrete <- function(...) ggthemes::scale_color_solarized()
  update_geom_defaults("point", list(size=4))
  update_geom_defaults("line", list(size=0.8))
}
