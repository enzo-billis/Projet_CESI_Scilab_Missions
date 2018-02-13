function Mission_B1()
    image=readpbm("Gliese 667Cc_surface.pbm")
    
    [w,h]=size(image)
    original=Histogramme(image, "Histogramme avant modification")
    image_normalisee=Normalisation(image)
    for x=1:w
        for y=1:h
           image_final(x,y)=image_normalisee(x,y)+35
           if image_final(x,y)>255 then
                image_final(x,y)=255
           end
        end
    end   
    figure(2)
    display_gray(image_final)
    final=Histogramme(image_final,"Histogramme Après Normalisation")
    writepbm(image_final, "Gliese_modifiee.pbm")
endfunction
