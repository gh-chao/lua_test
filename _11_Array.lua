-- 数组

array = {"111", "222"}

for i= 1, #array do
    print(array[i])
end

for k, v in pairs(array) do
    print(k .. ':' .. v)
end

for k, v in pairs(array) do
    print(k .. ':' .. v)
end

print(pairs(array))

print("a", "b", "c")

array = {"Lua", "Tutorial"}

function elementIterator (collection)
   local index = 0
   local count = #collection
   -- 闭包函数
   return function ()
      index = index + 1
      if index <= count
      then
         --  返回迭代器的当前元素
         return index, collection[index]
      end
   end
end

for key, element in elementIterator(array)
do
   print(key, element)
end