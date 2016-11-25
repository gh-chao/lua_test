-- 流程控制 if


-- Lua认为false和nil为假，true和非nil为真

--[ 0 为 true ]
if(0)
then
    print("0 为 true")
end


a = 1

-- if

if (a>0) then
    print("a>0")
end

a = 0

if (a>0) then
    print("a>0")
else
     print("a<=0")
end

if (a>0) then
    print("a>0")
elseif(a<0) then
    print("a<0")
else
    print("a=0")
end


--  多层if嵌套优化技巧

repeat

    if (false) then break end
    if (false) then break end
    if (false) then break end
    if (false) then break end

    print("优化嵌套循环")
  
until(true)