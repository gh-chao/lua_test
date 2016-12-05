-- 面向对象

Person = {
    name = "bb",
    age = "cc",
    sex = 1
}

function Person:new(o, name, age, sex)
    o = o or {}
    setmetatable(o, self)
    self.__index = self
    o.name = name
    o.age  = age

    if (sex ~= nil) then
        o.sex = sex
    end

    return o
end

function Person:say()
    print("my name is " .. self.name)
    print("my age is " .. self.age)
    print("my sex is " .. self.sex)
end

local p = Person:new({}, "leo", 23, 222)

p:say()

local b = Person:new({}, "leo2", 28)
b:say()

p:say()