
table1 = {}
table2 = table1

table1[1] = 300
table1[2] = 100
table.insert( table1, 200)

for k,v in pairs(table2) do
    print(k,v)
end

--[[
    1	table.concat (table [, sep [, start [, end] ] ]):
    concat是concatenate(连锁, 连接)的缩写. table.concat()函数列出参数中指定table的数组部分从start位置到end位置的所有元素, 元素间以指定的分隔符(sep)隔开。
    2	table.insert (table, [pos,] value):
    在table的数组部分指定位置(pos)插入值为value的一个元素. pos参数可选, 默认为数组部分末尾.
    3	table.maxn (table)
    指定table中所有正数key值中最大的key值. 如果不存在key值为正数的元素, 则返回0。(Lua5.2之后该方法已经不存在了,本文使用了自定义函数实现)
    4	table.remove (table [, pos])
    返回table数组部分位于pos位置的元素. 其后的元素会被前移. pos参数可选, 默认为table长度, 即从最后一个元素删起。
    5	table.sort (table [, comp])
    对给定的table进行升序排序。
]]

print(table.maxn (table1))




print("排序前")
for k,v in ipairs(table1) do
	print(k,v)
end

table.sort(table1)
print("排序后")
for k,v in ipairs(table1) do
	print(k,v)
end



print("删除前", table.concat( table1, ","))
table.remove (table1)
print("删除后", table.concat( table1, ","))
