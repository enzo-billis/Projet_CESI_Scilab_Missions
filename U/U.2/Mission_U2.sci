function Mission_U2()
    image=readpbm("U2_surface.pbm")
    objet_isole=Seuillage(Normalisation(Contour(image)),125,255)
    display_gray(objet_isole)
endfunction
