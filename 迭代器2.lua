
function allwords()--没有成功
    local line = io.read()
    local pos = 1--一行中的位置
    return function()--迭代器函数
        while line do
            local s,e = string.find(line, "%w+",pos)
            if s then
                pos = e + 1
                return string.sub(line,e,s)
            else
                line = io.read()
                pos = 1
            end
        end
        return nil
    end

end

for word in allwords() do
    print(word)
end