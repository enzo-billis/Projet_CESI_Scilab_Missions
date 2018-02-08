function Mission_B2()
    image=readpbm("GD61.pbm")
    GD61=Normalisation(image)
    display_gray(GD61)
endfunction
