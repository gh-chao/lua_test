-- function


-- 基本

function say_hello()
    print("hello, world!")
    return true
end

say_hello()

-- 带参数

function say(str)
    print(str)
    return true
end

say("hello, baby")


-- 局部函数

local function local_func()
    print("local_func")

    local function local_func1()
        print("local_func1")
    end
    local_func1()

    return true
end

local_func()

-- 多返回值

function mutli_return_func()
    return 1, 2
end

a, b = mutli_return_func()

print(a)
print(b)

-- 可变参数

function mutable_arg_func( ... )
    
    local arg = {...}

    print("参数长度" .. #arg)

    for k, v in pairs(arg) do
        print(k .. " : " .. v)
    end

    return true
end

mutable_arg_func(2, 3)