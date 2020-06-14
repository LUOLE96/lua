function printT(t)
    print('{'..table.concat(t,',')..'}')
end

local t1 = {1,2,3}
local t2 = t1

t2[1] = 3
printT(t1)
printT(t2)

print(t1)
print(t2)--t1,t2的地址是一样的

-------------------------------------
local t = {1,2,3}
print("test1")
print(t)
function changeTab(t)
    t[1] = 3
    print(t)
    return t
end

changeTab(t)
printT(t)

t = {1,2,3}
print("test2")
print(t)
function function2(t)
    t[1] = 10
    print("test3")
    print(t)
    t = {6,6,6}
    t[1] = 20
    print("test4")
    print(t)
end

function2(t)
printT(t)

