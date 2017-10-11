# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Build and Reload Package:  'Cmd + Shift + B'
#   Check Package:             'Cmd + Shift + E'
#   Test Package:              'Cmd + Shift + T'
require(ggplot2)
a_theme<- function(
  base_family="PT Sans Narrow",
  base_size = 10,
  plot_title_family='Slabo 27px',
  plot_title_size = 23,
  plot_title_face="plain",
  subtitle_family=base_family,
  subtitle_size = 11,
  subtitle_face = "plain",
  strip_text_family = base_family,
  strip_text_size = 12,
  strip_text_face = "plain",
  caption_family= base_family,
  caption_size = 10,
  caption_face = "plain",
  axis_text_size = base_size,
  axis_title_family = base_family,
  axis_title_size = 10,
  axis_title_face = "plain",
  grid_col='#dedede',
  grid=TRUE,
  noaxis=FALSE,
  emphasis='xy')
{
  aplot <- ggplot2::theme_minimal(base_family=base_family, base_size=base_size)
  
  if (inherits(grid, "character") | grid == TRUE) {
    
    aplot <- aplot + theme(panel.grid=element_line(color=grid_col, size=0.2))
    aplot <- aplot + theme(panel.grid.major=element_line(color=grid_col, size=0.2))
    aplot <- aplot + theme(panel.grid.minor=element_line(color=grid_col, size=0.15))
    
    if (inherits(grid, "character")) {
      if (regexpr("X", grid)[1] < 0) aplot <- aplot + theme(panel.grid.major.x=element_blank())
      if (regexpr("Y", grid)[1] < 0) aplot <- aplot + theme(panel.grid.major.y=element_blank())
      if (regexpr("x", grid)[1] < 0) aplot <- aplot + theme(panel.grid.minor.x=element_blank())
      if (regexpr("y", grid)[1] < 0) aplot <- aplot + theme(panel.grid.minor.y=element_blank())
    }
    
  } else {
    aplot <- aplot + theme(panel.grid=element_blank())
  }
  
  aplot <- aplot + theme(legend.background=element_blank())
  aplot <- aplot + theme(legend.key=element_blank())
  if (inherits(grid, "character") | noaxis == TRUE) {
    aplot <- aplot + theme(axis.text.x=element_blank())
    aplot <- aplot + theme(axis.text.y=element_blank())}
  else{
  aplot <- aplot + theme(axis.text.x=element_text(size=axis_text_size,family=subtitle_family,face = case_when(emphasis=='x' ~'bold',emphasis=='y'~'plain',emphasis=='xy'~'plain'),color='#444444'))
  aplot <- aplot + theme(axis.text.y=element_text(size=axis_text_size,family=subtitle_family,face = case_when(emphasis=='y' ~'bold',emphasis=='x'~'plain',emphasis=='xy'~'plain'),color='#444444'))}
  aplot <- aplot + theme(axis.title=element_text(size=axis_title_size, family=axis_title_family))
  aplot <- aplot + theme(axis.title.x=element_text(size=axis_title_size, family=axis_title_family, face=axis_title_face, margin=margin(t = 18, b = 18, unit = "pt")))
  aplot <- aplot + theme(axis.title.y=element_text(size=axis_title_size, family=axis_title_family, face=axis_title_face,margin=margin(r = 18, unit = "pt")))
  aplot <- aplot + theme(strip.text=element_text(hjust=0, size=strip_text_size,face=strip_text_face, family=strip_text_family))
  aplot <- aplot + theme(panel.spacing=grid::unit(2, "lines"))
  aplot <- aplot + theme(plot.title=element_text(hjust=0, size=plot_title_size, family=plot_title_family, face=plot_title_face,color='#444444'))
  aplot <- aplot + theme(plot.subtitle=element_text(hjust=0, size=subtitle_size, margin=margin(t = 8, b = 12, unit = "pt"),family=subtitle_family, face=subtitle_face,color='#565656', lineheight=1))
  aplot <- aplot + theme(plot.caption=element_text(hjust=1, size=caption_size,  family=caption_family, face=caption_face,color='#565656'))
  aplot

}

#fun color palette
a_palette <- c('#2A363B','#019875','#99B898','#FECEA8','#FF847C','#E84A5F','#C0392B','#96281B')
a_pal <- function() { scales::manual_pal(a_palette) }
a_scale_color <- function(...) { discrete_scale("color", "a", a_pal(), ...) }
a_scale_fill <- function(...) { discrete_scale("fill", "a", a_pal(), ...) }

