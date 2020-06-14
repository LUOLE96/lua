local function foo(<参数>) <函数体> end
--lua将其展开为：
local foo
foo = function (<参数>) <函数体> end

local function fact(n)--正确
    if n == 0 then
        return 1
    else
        return n * fact(n- 1)
    end
end

--------------------------------------间接递归调用模板
local f,g
function g()
    <函数代码>
    f()
    <函数代码>
end

function f()---注意不能加local
    <函数代码>
    g()
    <函数代码>
end
