function Mission_B2()
    //Chargement des coordonnées des pixels dans un tableau
    image=readpbm("GD61.pbm")
    
    //Création et affichage d'un histogramme avant modification
    original=Histogramme(image,"Histogramme Avant Normalisation")
    
    //On effectue une normalisation sur l'image pour remettre à niveau les niveaux de gris
    GD61=Normalisation(image)
    
    //Affichage de l'image dans une nouvelle fenêtre
    figure(2)
    display_gray(GD61)
    
    //Création et affichage d'un histogramme après la normalisation
    Histogramme(GD61,"Histogramme Après Normalisation")
    
    //Sauvegarde de l'image
    writepbm(GD61,"GD61Normalise.pbm")
endfunction
