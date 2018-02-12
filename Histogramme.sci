function graphique=Histogramme(image, nom_histogramme)
    
    //Création de la base du graphique (nom et couleur de fond)
    graphique=figure("figure_name",nom_histogramme,"backgroundcolor",[1,1,1])
    
    //Récupération taille de l'image
    [hauteur, largeur]=size(image)
    
    //Initialisation du tableau contenant les valeurs de l'histogramme
    nombre_pixels=zeros(256, 2)
    nombre_pixels(1,2)=0
    for x=2:255
        nombre_pixels(x,2)=x
    end
    
    //Incrémentation des pixels du tableau comportant les valeurs de l'histogramme
    for x=1:hauteur
        for y=1:largeur
             nombre_pixels(image(x,y)+1,1)=(nombre_pixels(image(x,y)+1,1))+1
        end
    end
    
    //Créer la légende
    xtitle("Histogramme", "Niveau de gris", "Nombre de pixels")
    
    //Afficher le graphique
    plot2d(nombre_pixels)
endfunction
