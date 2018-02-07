function Mission_A1()
    //stocke l'image dans variable
    image=readpbm("Encelade_surface.pbm")
    
    //trouve le plus haut niveau niveau de gris - le stocke dans une variable
    valeur=max(image)
    
    //afficher coordonnées plus haut niveau de gris dans la matrice
    [y,x]=find(image==valeur)
    disp("Voici la ou les cordoonnee(s) pour atterir (coordonnée y, coordonnée x):")
    disp([y,x])
    
    //afficher la valeur du plus haut niveau de gris (correspondant aux coordonnées)
    disp("La valeur du plus haut niveau de gris est:")
    disp(valeur)
    
    //afficher image
    display_gray(image)
endfunction
