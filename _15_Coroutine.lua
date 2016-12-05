co = coroutine.create(
    function(i)
        print(i)
    end
)


coroutine.resume( co,1 )

print(coroutine.status(co))  -- dead

co = coroutine.wrap(
    function(i)
        print(i);
    end
)
 
co(1)

print("-----------")

co2 = coroutine.create(
    function()
        for i=1,10 do
            print(i)
            if i == 3 then
                print(coroutine.status(co2))  --running
                print(coroutine.running()) --thread:XXXXXX
            end
            coroutine.yield()
        end
    end
)

coroutine.resume(co2) --1
coroutine.resume(co2) --2
coroutine.resume(co2) --3
coroutine.resume(co2) --4


print(string.rep("-", 100))

-- function foo(a)
--     print("foo", a)
--     return coroutine.yield(2 * a)
-- end

co = coroutine.create(function ( a, b )
    
    print(coroutine.yield( a, b ))
    print(coroutine.yield( a, b ))
    print(coroutine.yield( a, b ))

    return true
end)

print("main", coroutine.resume(co, 1, 10))
print("main", coroutine.resume(co, 100, 1000))
print("main", coroutine.resume(co, "x", "y"))
print("main", coroutine.resume(co, "x", "y"))