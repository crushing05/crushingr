#' theme_light
#'
#' Modification of theme_clark to add dark background & grey axis lines/text (based on solarized)
#' @param ggplot object
#' @keywords theme
#' @export

theme_light <- function(base_size = 12, base_family = "") {
  half_line <- base_size/2
  ggplot2::theme(
    # Elements in this first block aren't used directly, but are inherited
    # by others
    line =               element_line(colour = "#cb4b16", size = 0.5, linetype = 1,
                                      lineend = "butt"),
    rect =               element_rect(fill = "white", colour = "black", size = 0.5, linetype = 1),
    text =               element_text(family = base_family, face = "plain",
                                      colour = "black", size = base_size,
                                      hjust = 0.5, vjust = 0.5, angle = 0, lineheight = 0.9, margin = margin(),
                                      debug = FALSE),
    axis.text =          element_text(size = rel(0.8), colour = "#586e75"),
    axis.title=          element_text(colour = "#586e75", vjust=0.35),
    strip.text =         element_text(size = rel(0.8)),

    axis.line =          element_line(size=.7, color = "#586e75"),
    axis.line.x =        NULL,
    axis.line.y =        NULL,
    axis.text.x =        element_text(size = base_size*1.1 , lineheight = 0.9,
                                      margin = margin(t = 0.8 * half_line/2), vjust = 1),
    axis.text.x.top =    element_text(margin = margin(b = 0.8 * half_line/2), vjust = 0),
    axis.text.y =        element_text(size = base_size*1.1, lineheight = 0.9,
                                      margin = margin(r = 0.8 * half_line/2), vjust = 1),
    axis.text.y.right =  element_text(margin = margin(l = 0.8 * half_line/2), hjust = 0),
    axis.ticks =         element_line(colour = "#586e75", size = 0.2),
    axis.title.x =       element_text(size = base_size*1.4, vjust = 0.3,
                                      margin = margin(t = 0.8 * half_line, b = 0.8 * half_line/2)),
    axis.title.x.top =   element_text(margin = margin(b = half_line), vjust = 0),
    axis.title.y =       element_text(size = base_size*1.4, angle = 90, vjust = 1,
                                      margin = margin(r = 0.8 * half_line, l = 0.8 * half_line/2)),
    axis.title.y.right = element_text(angle = -90,margin = margin(l = half_line), vjust = 0),
    axis.ticks.length =  grid::unit(0.3, "lines"),

    legend.background =  element_rect(colour = NA),
    legend.spacing.x =   NULL,
    legend.spacing.y =   NULL,
    legend.margin =      grid::unit(0.2, "cm"),
    legend.box.margin =  margin(0, 0, 0, 0, "cm"),
    legend.box.background = element_blank(),
    legend.box.spacing = unit(0.4, "cm"),
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

    panel.background =   element_rect(fill = "#fdf6e3", colour = NA),
    panel.border =       element_blank(),
    panel.grid.major =   element_blank(),
    panel.grid.minor =   element_blank(),
    panel.margin =       grid::unit(half_line, "pt"),
    panel.margin.x =     NULL,
    panel.margin.y =     NULL,
    panel.spacing.x =    NULL,
    panel.spacing.y =    NULL,

    strip.background =   element_rect(fill = NA, colour = NA),
    strip.text.x =       element_text(size = base_size),
    strip.text.y =       element_text(size = base_size, angle = -90),
    strip.placement =    "inside",


    plot.title = element_text(size = base_size * 2, hjust = 0, face = "bold",
                              vjust = 2, margin = margin(b = half_line * 1.2)),
    plot.subtitle = element_text(size = base_size * 1.2, hjust = 0,
                                 vjust = 2, margin = margin(b = half_line * 0.9)),
    plot.caption = element_text(size = rel(0.9), hjust = 1,
                                vjust = 2, margin = margin(t = half_line * 0.9)),
    plot.margin = margin(half_line, half_line, half_line,
                         half_line), complete = TRUE)
}

