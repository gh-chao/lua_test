-- Lua 数据类型

-- Lua是动态类型语言，变量不要类型定义,只需要为变量赋值。 值可以存储在变量中，作为参数传递或结果返回。
-- Lua中有8个基本类型分别为：nil、boolean、number、string、userdata、function、thread和table。

--[[
    nil	这个最简单，只有值nil属于该类，表示一个无效值（在条件表达式中相当于false）。
    boolean	包含两个值：false和true。
    number	表示双精度类型的实浮点数
    string	字符串由一对双引号或单引号来表示
    function	由 C 或 Lua 编写的函数
    userdata	表示任意存储在变量中的C数据结构
    thread	表示执行的独立线路，用于执行协同程序
    table	Lua 中的表（table）其实是一个"关联数组"（associative arrays），数组的索引可以是数字或者是字符串。在 Lua 里，table 的创建是通过"构造表达式"来完成，最简单构造表达式是{}，用来创建一个空表。
--]]


print(type("Hello world"))      --> string
print(type(10.4*3))             --> number
print(type(print))              --> function
print(type(type))               --> function
print(type(true))               --> boolean
print(type(nil))                --> nil
print(type(type(X)))            --> string

-- 变量定义

-- string
var_string = "string"
var_string = 'string'
var_string = [[
    string
    string
]]

-- number
var_number = 100
var_number = 2e-2
var_number = 2e2
var_number = 0.2e-1
var_number = 7e-06

--  boolean
var_boolean = false
var_boolean = true


-- table
var_table = {}
var_table = {"hello", "world", key="value", ["bb" .. "dd"]="cc"}

-- Lua的table索引从1开始
for k, v in pairs(var_table) do
    print(k .. " : " .. v)
end

print(var_table["key"])
print(var_table.key)
print(var_table.bbdd)

-- function
-- 普通方式
function func1()
    print("im function1")
end

func1()

-- 匿名方式
func2 = function()
    print("im function2")
end

func2()