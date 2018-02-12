function Mission_X2()
    image=readpbm("Gliese 581d V2.pbm")
    [hauteur, largeur]=size(image)
    image_modifiee=zeros([hauteur,largeur])
    for x=2:hauteur-1
        for y=2:largeur-1
                if image(x,y) == 255 | image(x,y) == 0 then
                    //On selection chaque valeur autour de notre pixel et notre pixel
                    medianValue=[image(x,y),image(x-1,y-1),image(x-1,y);image(x-1,y+1),image(x,y-1),image(x,y+1);image(x+1,y-1),image(x+1,y),image(x+1,y+1)]
                    //La fonction median permet de prendre la valeur au milieu, et ce sera la valeur de notre pixel a présent
                    image_modifiee(x,y)=median(medianValue)
                else
                    image_modifiee(x,y)=image(x,y)
                end
        end
    end
    display_gray(image_modifiee)
    writepbm(image_modifiee, "Gliese_581_V2_modifiee.pbm")
endfunction
