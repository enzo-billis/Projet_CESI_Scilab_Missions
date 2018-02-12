function Mission_B2()
    image=readpbm("GD61.pbm")
    original=Histogramme(image,"Histogramme Avant Normalisation")
    GD61=Normalisation(image)
    figure(2)
    display_gray(GD61)
    Histogramme(GD61,"Histogramme Après Normalisation")
    writepbm(GD61,"GD61Normalise.pbm")
endfunction
