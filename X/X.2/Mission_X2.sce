function Mission_X2()
    //Chargement des coordonnées des pixels dans un tableau
    image=readpbm("Gliese 581d V2.pbm")
    //Récupération de la taille de l'image
    [hauteur, largeur]=size(image)
    //Initialisation du tableau comportant les coordonnées de l'image finale
    image_modifiee=zeros([hauteur,largeur])
    //Application d'un filtre médian conditionnel
    for x=2:hauteur-1
        for y=2:largeur-1
                if image(x,y) == 255 | image(x,y) == 0 then
                    //On sélectionne chaque valeur autour de notre pixel ainsi que notre pixel
                    medianValue=[image(x,y),image(x-1,y-1),image(x-1,y);image(x-1,y+1),image(x,y-1),image(x,y+1);image(x+1,y-1),image(x+1,y),image(x+1,y+1)]
                    //La fonction median permet de prendre la valeur au milieu, et ce sera la valeur de notre pixel a présent
                    image_modifiee(x,y)=median(medianValue)
                else
                    image_modifiee(x,y)=image(x,y)
                end
        end
    end
    //Affichage de l'image finale
    display_gray(image_modifiee)
    //Sauvegarde de l'image finale
    writepbm(image_modifiee, "Gliese_581_V2_modifiee.pbm")
endfunction
