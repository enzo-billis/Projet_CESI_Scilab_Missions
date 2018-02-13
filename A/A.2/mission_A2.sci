function Mission_A2()
    //Chargement de l'image en mettant les coordonnées des pixels dans un tableau
    mars_image=readpbm("Mars_surface.pbm")
    
    //Calcul de la moyenne du niveau de gris dans l'image
    moyenne=((mean(mars_image))/255)*100
    
    //Affichage de la moyenne du niveau de gris
    disp("La quantité de méthane dans l air (en pourcentage) est :")
    disp(moyenne)
    
    //Affichage de l'image
    display_gray(mars_image)
endfunction
