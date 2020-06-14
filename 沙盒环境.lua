do
    local oldOpen=io.open--保存原来的函数
    local access_OK = function(filename,mode) <检查访问权限> end
    io.open = function(filename,mode)
        if access_OK(filename,mode) then
            return oldOpen(filename,mode)
        else
            return nil,"access denied"
        end
end

