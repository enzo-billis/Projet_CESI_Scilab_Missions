function Mission_B3()
    //Chargement des coordonnées des pixels dans un tableau
    HD=readpbm("HD215497.pbm")
    
    //Modification des plages de niveaux de gris pour correspondre à quatres zones distinctes
    for x=1:512
        for y=1:384
            if HD(x,y)>=0 & HD(x,y)<64 then
                HD(x,y)=0
            end
            if HD(x,y)>=64 & HD(x,y)<128 then
                HD(x,y)=85
            end
            if HD(x,y)>=128 & HD(x,y)<192 then
                HD(x,y)=170
            end
            if HD(x,y)>=192 & HD(x,y)<256 then
                HD(x,y)=255
            end
        end
    end
    
    //Affichage de l'image
    display_gray(HD)
    
    //Sauvegarde de l'image
    writepbm(HD, "HD215497_modifiee.pbm")
endfunction
