function Mission_A4()
    //Chargement des coordonnées des pixels dans des tableaux
    Jup1=readpbm("Jupiter1.pbm")
    Jup2=readpbm("Jupiter2.pbm")
    
    //Récupération de la taille des images
    [hauteur1, largeur1]=size(Jup1)
    [hauteur2, largeur2]=size(Jup2)
    
    //On utilise une boucle FOR pour prendre l'ensemble de l'image sauf un pixel sur chaque bord (A cause de la selection du Filtre median qui créerait une erreur)
    for x=1:hauteur1
        for y=1:largeur1
            if Jup1(x,y)==255 & Jup2(x,y)<>255 then
                Jup1(x,y)=Jup2(x,y)
            end
        end
    end

    for x=2:hauteur2-1
        for y=2:largeur2-1
            //On selection chaque valeur autour de notre pixel et notre pixel
            medianValue=[Jup1(x,y),Jup1(x-1,y-1),Jup1(x-1,y);Jup1(x-1,y+1),Jup1(x,y-1),Jup1(x,y+1);Jup1(x+1,y-1),Jup1(x+1,y),Jup1(x+1,y+1)]
            //La fonction median permet de prendre la valeur au milieu, et ce sera la valeur de notre pixel a présent
            Jup1(x,y)=median(medianValue)
        end
    end
    
    //Affichage de l'image final
    display_gray(Jup1)
    
    //Sauvegarde de l'image final
    writepbm(Jup1, "Jupiter_final.pbm")
endfunction
