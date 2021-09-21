# source('./code/stl.R')
library(slmeta)
library(ceanav)
data(aoi)
tc <- aoi
library(nceadfo)
data(aoi)
scotian <- aoi[1, ]
# nfl <- aoi[2, ]

### Colors
stl    <- '#68908b'
focus  <- '#25364A'
off    <- '#C7CBCE'
border <- '#f4f4f4'
names  <- slmetaPal('platform')[8]
pal <- colorRampPalette(slmetaPal('platform'))
bg <- '#f5f5f5'
ext <- c(-830844.6,  -350000, 1500000, 2214428.7)


png('./Figures/stl2.png', res = 250, width = 120, height = 150, units = "mm")
plotEGSL(layers = c('egslOutline','quebec'),
         prj        = slmetaPrj('default'),
         extent     = 'quebec',
         cols       = c(stl, focus),
         borders    = border,
         lwds       = 1.25,
         mar        = c(0,0,0,0),
         box        = FALSE,
         axes       = NULL,
         background = bg,
         graticules = NULL,
         scale      = FALSE,
         northArrow = FALSE,
         prjText    = FALSE,
         prjCol     = NULL)
dev.off()



png('./Figures/scotian-shelf.png', res = 250, width = 120, height = 150, units = "mm")
plotEGSL(layers = c('scotian','egslOutline','quebec'),
         prj        = slmetaPrj('default'),
         extent     = ext,
         cols       = c(stl, off, focus),
         borders    = border,
         lwds       = 1.25,
         mar        = c(0,0,0,0),
         box        = FALSE,
         axes       = NULL,
         background = bg,
         graticules = NULL,
         scale      = FALSE,
         northArrow = FALSE,
         prjText    = FALSE,
         prjCol     = NULL)
dev.off()

# png('./Figures/newfoundland-labrador.png', res = 250, width = 120, height = 150, units = "mm")
# plotEGSL(layers = c('nfl','scotian','egslOutline','quebec'),
#          prj        = slmetaPrj('default'),
#          extent     = ext,
#          cols       = c(stl, off, off, focus),
#          borders    = border,
#          lwds       = 1.25,
#          mar        = c(0,0,0,0),
#          box        = FALSE,
#          axes       = NULL,
#          background = bg,
#          graticules = NULL,
#          scale      = FALSE,
#          northArrow = FALSE,
#          prjText    = FALSE,
#          prjCol     = NULL)
# dev.off()


png('./Figures/tc.png', res = 250, width = 120, height = 150, units = "mm")
plotEGSL(layers = c('scotian','egslOutline','quebec','tc'),
         prj        = slmetaPrj('default'),
         extent     = ext,
         cols       = c(off,off,focus, stl),
         borders    = border,
         lwds       = 1.25,
         mar        = c(0,0,0,0),
         box        = FALSE,
         axes       = NULL,
         background = bg,
         graticules = NULL,
         scale      = FALSE,
         northArrow = FALSE,
         prjText    = FALSE,
         prjCol     = NULL)
dev.off()
