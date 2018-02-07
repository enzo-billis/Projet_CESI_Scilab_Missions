HD=readpbm("HD215497.pbm")
for x=1:512
    for y=1:384
       if HD(x,y)>=0 & HD(x,y)<64 then
           HD(x,y)=32
       end
       if HD(x,y)>=64 & HD(x,y)<128 then
           HD(x,y)=96
       end
       if HD(x,y)>=128 & HD(x,y)<192 then
           HD(x,y)=160
       end
       if HD(x,y)>=192 & HD(x,y)<256 then
           HD(x,y)=224
       end
    end
end
display_gray(HD)
