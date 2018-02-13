function Mission_X1()
    //Chargement du fichier de données brutes
    load("Asellus Secondus.dat")
    //Application de l'inversé de fourrier discrete pour obtenir les coordonnées de l'image
    image=ifft(imgT)
    //Affichage de l'image
    display_gray(image)
    //Sauvegarde de l'image
    writepbm(image, "Asellus.pbm")
endfunction
