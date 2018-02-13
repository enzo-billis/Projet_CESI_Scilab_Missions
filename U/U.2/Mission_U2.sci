function Mission_U2()
    //Chargement des coordonnées des pixels dans un tableau
    image=readpbm("U2_surface.pbm")
    //Application de filtres pour isoler l'objet voulu
    objet_isole=Seuillage(Normalisation(Contour(image)),125,255)
    //Affichage de l'image isolant l'objet
    display_gray(objet_isole)
    //Sauvegarde de l'image
    writepbm(objet_isole,"U2_objet_isole.pbm")
endfunction
