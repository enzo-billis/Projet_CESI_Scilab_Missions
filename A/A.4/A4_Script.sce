Jup1=readpbm("Jupiter1.pbm")
Jup2=readpbm("Jupiter2.pbm")
//On utilise une boucle FOR pour prendre l'ensemble de l'image sauf un pixel sur chaque bord (A cause de la selection du Filtre median qui créerait une erreur)
for x=1:860
    for y=1:460
       if Jup1(x,y)==255 & Jup2(x,y)<>255 then
           Jup1(x,y)=Jup2(x,y)
       end
    end
end

for x=2:859
    for y=2:459
        //On selection chaque valeur autour de notre pixel et notre pixel
        medianValue=[Jup1(x,y),Jup1(x-1,y-1),Jup1(x-1,y);Jup1(x-1,y+1),Jup1(x,y-1),Jup1(x,y+1);Jup1(x+1,y-1),Jup1(x+1,y),Jup1(x+1,y+1)]
        //La fonction median permet de prendre la valeur au milieu, et ce sera la valeur de notre pixel a présent
        Jup1(x,y)=median(medianValue)
    end
end
display_gray(Jup1)
