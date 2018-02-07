function Mission_A3()
    europa_image=readpbm("Europa_surface.pbm")
    [wi,he]=size(europa_image)
    disp([wi,he])
    europa_EC=zeros(512,384)
    for x=1:wi
        for y=1:he
            if europa_image(x,y)>240 then
                europa_EC(x,y)=255
            end
        end
    end
    display_gray(europa_EC)
endfunction
