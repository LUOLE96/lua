function createRobot(name,id)
    local obj = {name = name,id = id}

    function obj:SetName(name)
        self.name = name
    end

    function obj:Getname()
        return self.name
    end

    function obj:GetId()
        return self.id
    end
    return obj
end

function CreateFootballRobot(name,id,position)
    local obj = createRobot(name,id)
    obj.position = "right back"

    function obj:SetPosition(p)
        self.position = p
    end

    function obj:GetPosition()
        return self.position
    end
    return obj    
end