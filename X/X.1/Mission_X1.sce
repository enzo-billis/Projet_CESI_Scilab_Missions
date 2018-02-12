function Mission_X1()
    
    load("Asellus Secondus.dat")
    image=ifft(imgT)
    display_gray(image)
    writepbm(image, "Asellus.pbm")
    
endfunction
