-- lua的循环语句


-- while

local a=0

while( a < 10 )
do
   print("a 的值为:", a)
   a = a+1
end


-- for

--[[
    for var=exp1,exp2,exp3 do  
        <执行体>  
    end 
    var从exp1变化到exp2，每次变化以exp3为步长递增var，并执行一次"执行体"。exp3是可选的，如果不指定，默认为1。

]]


-- 数值for循环
-- 这里循环的i变量为局部变量, 只在for循环内部生效
for i=1,10,1 do
    print("变量i的值为" .. i)
end



-- 泛型for循环

a = {"a", "b", "c"}

for i,v in pairs(a) do
     print(i .. ":" .. v)
end  


-- repeat...until
-- 类似于do..while
-- 但是until的值为true时才会停止, 为false时继续循环

a = 10
repeat
   print("a的值为:", a)
   a = a + 1
until( a > 15 )


-- break 跳出循环

