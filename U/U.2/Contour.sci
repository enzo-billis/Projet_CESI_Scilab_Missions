function NouvelleImage=Contour(image)
    [hauteur, largeur]=size(image)
    NouvelleImage=zeros([hauteur, largeur])
    
    GradientVertical=Convolution(image, [-1 0 1; -1 0 1; -1 0 1])
    GradientHorizontal=Convolution(image, [-1 -1 -1 ; 0 0 0; 1 1 1])
    
    for x=1:hauteur-1
        for y=1:largeur-1
            NouvelleImage(x,y)=round(sqrt((GradientVertical(x,y)^2)+(GradientHorizontal(x,y)^2)))
        end
    end
    
endfunction
