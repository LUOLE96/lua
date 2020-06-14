local function create(name,id)
    local obj = {name = name,id = id}
    function obj:SetName(name)
        self.name = name
    end
    function obj:GetName()
        return self.name
    end
    function obj:SetID(id)
        self.id = id
    end
    function obj:GetId()
        return self.id
    end
    return obj
end

o1 = create("sam",001)

print("01'name :",o1:GetName(),"o1's id:",o1:GetId())

o1:SetID(100)
o1:SetName("lucy")

print("o1'name:",o1:GetName(),"o1's id:",o1:GetId())


