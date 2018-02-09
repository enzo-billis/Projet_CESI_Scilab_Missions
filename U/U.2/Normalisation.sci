function TransformedImage=Normalisation(image)
    [hauteur, largeur]=size(image)
    TransformedImage=zeros(hauteur, largeur)
    minimum=min(image)
    maximum=max(image)
    for x=1:hauteur
        for y=1:largeur
            TransformedImage(x,y)=((image(x,y)-minimum)*255)/(maximum-minimum) 
        end
    end
endfunction
