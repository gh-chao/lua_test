
filename = "_16_IO_test.lua"

file = io.open(filename, "a+");

file:write("print(123)\n")

file:flush()

print(file:seek())

print(file:seek("set"))

print(file:read())

io.close(file);



os.remove(filename)