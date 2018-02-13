function scriptU1()
    //Chargement des coordonnées des pixels dans un tableau
    imageuun=readpbm("U1_surface.pbm")
    //Application d'un filtre de contour sur l'image
    imageuun=Contour(imageuun)
    //Application d'un filtre de normalisation sur l'image
    imageuun=Normalisation(imageuun)
    //Affichage de l'image
    display_gray(imageuun)
    //Sauvegarde de l'image
    writepbm(imageuun, "U1_surface_modifiee.pbm")
endfunction
