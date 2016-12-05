local function add(a,b)
   assert(type(a) == "number", "a 不是一个数字")
   assert(type(b) == "number", "b 不是一个数字")

   return a+b
end

local function less(a,b)
   assert(type(a) == "number", "a 不是一个数字")
   assert(type(b) == "number", "b 不是一个数字")

   error("哈哈哈")

   return a-b
end

print(add(10, 10))
print(less(10, 10))