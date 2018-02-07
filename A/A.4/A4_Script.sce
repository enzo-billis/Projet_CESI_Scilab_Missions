Jup1=readpbm("Jupiter1.pbm")
Jup2=readpbm("Jupiter2.pbm")
for x=1:860
    for y=1:460
        if Jup1(x,y)==255&Jup2(x,y)<>255 then
            Jup1(x,y)=Jup2(x,y)
        end
        if Jup1(x,y)==0 & Jup2(x,y)<>0 then
           Jup1(x,y)=Jup2(x,y)
        end
    end
end
display_gray(Jup1)
