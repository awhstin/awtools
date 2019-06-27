#palettes
#'primary color palette
#' @export
ppalette<-c('#F7DC05','#3d98d3','#EC0B88','#5e35b1','#f9791e','#3dd378','#c6c6c6','#444444')
#'secondary color palette
#' @export
spalette<-c('#9F248F','#FFCE4E','#017a4a','#f9791e','#244579','#c6242d')
#'flat
#' @export
mpalette<-c('#017a4a','#FFCE4E','#3d98d3','#ff363c','#7559a2','#794924','#8cdb5e','#d6d6d6','#fb8c00')
#'original
#' @export
a_palette<-c('#2A363B','#019875','#99B898','#FECEA8','#FF847C','#E84A5F','#C0392B','#96281B')
#'grays
#' @export
gpalette<-c('#d6d6d6','#adadad','#707070','#333333') 
#'big color palette
bpalette<-c('#c62828','#f44336','#9c27b0','#673ab7','#3f51b5','#2196f3','#29b6f6',
       '#006064','#009688','#4caf50','#8bc34a','#ffeb3b','#ff9800','#795548',
       '#9e9e9e','#607d8b')


#' Original color palette with decent brightness
#'
#' @export
#' @examples
#' library(scales)
#' scales::show_col(a_pal()(8))
a_pal <- function() {scales::manual_pal(a_palette) }

#' @md
#' @export
a_scale_colour <- function(...) { discrete_scale("colour", "a", a_pal(), ...) }
#' @md
#' @export
a_scale_color<-a_scale_colour
#' @md
#' @export
a_scale_fill <- function(...) { discrete_scale("fill", "a", a_pal(), ...) }

#' Big color palette
#'
#' @export
#' @examples
#' library(scales)
#' scales::show_col(b_pal()(8))
b_pal <- function() {scales::manual_pal(bpalette) }

#' @md
#' @export
b_scale_colour <- function(...) { discrete_scale("colour", "a", b_pal(), ...) }
#' @md
#' @export
b_scale_color<-b_scale_colour
#' @md
#' @export
b_scale_fill <- function(...) { discrete_scale("fill", "a", b_pal(), ...) }


#' Primary color palette with decent brightness
#'
#' @export
#' @examples
#' library(scales)
#' scales::show_col(p_pal()(8))
p_pal<- function() { scales::manual_pal(ppalette) }
#' @md
#' @export
a_primary_colour <- function(...) { discrete_scale("colour", "a", p_pal(), ...) }
#' @md
#' @export
a_primary_color<-a_primary_colour
#' @md
#' @export
a_primary_fill <- function(...) { discrete_scale("fill", "a", p_pal(), ...) }

#' Secondary color palette
#secondary color palette
#' @export
s_pal<- function() { scales::manual_pal(spalette)}
#' @export
a_secondary_colour <- function(...) { discrete_scale("colour", "a", s_pal(), ...) }
#' @export
a_secondary_color<-a_secondary_colour
#' @export
a_secondary_fill <- function(...) { discrete_scale("fill", "a", s_pal(), ...) }


#' Flat color palette (see readme)
#' @export
m_pal<- function() { scales::manual_pal(mpalette)}
#' flat color palette (see readme)
#' @export
a_flat_colour <- function(...) { discrete_scale("colour", "a", m_pal(), ...) }
#' flat color palette (see readme)
#' @export
a_flat_color<-a_flat_colour
#' flat color palette (see readme)
#' @export
a_flat_fill <- function(...) { discrete_scale("fill", "a", m_pal(), ...) }

#' Sort of sequential gray palette
#' @export
#' @examples
#' library(scales)
#' scales::show_col(g_pal()(4))
g_pal<- function() { scales::manual_pal(gpalette)}
#' @export
a_gray_colour <- function(...) { discrete_scale("colour", "a", g_pal(), ...) }
#' @export
a_gray_color<-a_gray_colour
#' @export
a_gray_fill <- function(...) { discrete_scale("fill", "a", g_pal(), ...) }