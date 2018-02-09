function NouvelleImage=Convolution(image, filtre)
    [hauteur, largeur]=size(image)
    NouvelleImage=zeros([hauteur, largeur])
    for x=2:hauteur-1
        for y=2:largeur-1
            NouvelleImage(x,y)=round((image(x-1,y-1)*filtre(1,1))+(image(x,y-1)*filtre(1,2))+(image(x+1,y-1)*filtre(1,3))+(image(x-1,y)*filtre(2,1))+(image(x,y)*filtre(2,2))+(image(x+1,y)*filtre(2,3))+(image(x-1,y+1)*filtre(3,1))+(image(x,y+1)*filtre(3,2))+(image(x+1,y+1)*filtre(3,3)))/10
        end
    end
endfunction
