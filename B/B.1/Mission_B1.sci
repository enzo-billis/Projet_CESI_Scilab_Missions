function Mission_B1()
    image=readpbm("Gliese 667Cc_surface.pbm")
    //image=image*15
    
    [w,h]=size(image)
    for x=1:w
        for y=1:h
            if image(x,y)>10
                image(x,y)=image(x,y)*15
            elseif image(x,y)>1
                image(x,y)=image(x,y)*5
        end
    end
 end   
    display_gray(image)
endfunction
