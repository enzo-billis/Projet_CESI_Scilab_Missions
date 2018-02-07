function Mission_A2()
    mars_image=readpbm("Mars_surface.pbm")
    moyenne=((mean(mars_image))/255)*100
    disp("La quantité de méthane dans l air (en pourcentage) est :")
    disp(moyenne)
    display_gray(mars_image)
endfunction
