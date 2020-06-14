local t = {10,20,30}

local function values(t)
    local i = 0
    return function()
        i = i + 1
        return t[i]
    end
end

local iter = values(t)--创建迭代器
while true do
    local element = iter()
    if element == nil then
        break
    end
    print("while"..element)
end

for element in values(t) do
    print("for"..element)
end

