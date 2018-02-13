function Mission_A3()
    
    //Chargement des pixels de l'image dans un tableau
    europa_image=readpbm("Europa_surface.pbm")
    
    //Récupération de la taille de l'image
    [wi,he]=size(europa_image)
    
    //Initialisation du tableau de sortie
    europa_EC=zeros([wi,he])
    
    //Seuillage en acceptant les niveaux de gris supérieur à 240
    for x=1:wi
        for y=1:he
            if europa_image(x,y)>240 then
                europa_EC(x,y)=255
            end
        end
    end
    
    //Affichage de l'image
    display_gray(europa_EC)
    
    //Création de l'image de sortie
    writepbm(europa_EC, "Europa_Eau_Chaude.pbm")
endfunction
