function scriptU1()
    imageuun=readpbm("U1_surface.pbm")
    imageuun=Contour(imageuun)
    imageuun=Normalisation(imageuun)
    display_gray(imageuun)
endfunction
