function NouvelleImage=Seuillage(image, minimum, maximum)
    [hauteur, largeur]=size(image)
    NouvelleImage=zeros([hauteur, largeur])
    for x=1:hauteur
        for y=1:largeur
            if image(x,y)>minimum & image(x,y)<maximum then
                //NouvelleImage(x,y)=image(x,y)
                NouvelleImage(x,y)=255
            else 
                NouvelleImage(x,y)=0
            end 
        end
    end
endfunction
