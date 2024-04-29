-- / main module
local uic = {
    version = "v1.0",
    services = {}, -- # game services that UI functions would use
    hidden = {}, -- # hidden functions such as clearing all elements etc
    module = {}, -- # main functions
    special = {}, -- # special functions like dragging and tweening
    presets = { -- # tween presets
        ["default"] = TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut, 0, false, 0)
    }, 
    elements = {} -- # ui elements
}

-- / variables
function get(service: string) -- # get service
    local service = service or nil
    return game:GetService(service)
end

uic.services = { -- # all services
    uis = get("UserInputService"),
    tween = get("TweenService"),
    text = get("TextService"),
    run = get("RunService"),
    http = get("HttpService"),
    market = get("MarketplaceService"),
    workspace = get("Workspace"),
    rs = get("ReplicatedStorage"),
    tele = get("TeleportService"),
    core = get("CoreGui"),
    mouse = nil,
    get = get
}

uic.services.mouse = function() -- # better than player:GetMouse()
    return uic.services.uis:GetMouseLocation()
end

-- / hidden functions
uic.hidden.validate = function(class: string) -- # check if class exists
    local allowed = {
        "Frame", "TextLabel", "TextBox", "TextButton", "ImageButton", "ImageLabel", "ViewportFrame", "VideoFrame", "Folder", "ScreenGui", "ScrollingFrame",
        "UIListLayout", "UICorner", "UIAspectRatioConstraint", "UISizeConstraint", "UITextSizeConstraint", "UIGradient", "UIGridLayout", "UIPageLayout", "UITableLayout", "UIPadding", "UIScale", "UIStroke", "CanvasGroup"
    }

    for i,v in next, allowed do
        if allowed[i] == class then
            return true
        end
    end
    return false
end

uic.hidden.clear = function() -- # clear all elements
    for i,v in next, uic.elements do
        table.remove(uic.elements, i)
        v:Destroy()
    end
end

-- / module functions
uic.module.create = function(class: string, parent, properties: table) -- # create element
    if uic.hidden.validate(class) == true then
        local object = Instance.new(class)
        if typeof(properties) == "table" then
            properties.Parent = parent
            for i,v in next, properties do
                object[i] = v
            end
        end

        table.insert(uic.elements, object)
        return object
    end
    return nil
end

-- / special functions
uic.special.new_preset = function(args: table) -- # create new tween preset
    local args = args or {}
    local name = args.name or "tween_#" .. tostring(#uic.presets + 1)
    local speed = args.speed or 0.17
    local style = args.style or Enum.EasingStyle.Sine
    local direction = args.direction or Enum.EasingDirection.InOut
    local loops = args.loops or 0
    local reverse = args.reverse or false
    local delay = args.delay or 0

    uic.presets[name] = TweenInfo.new(speed, style, direction, loops, reverse, delay)

    return uic.presets[name]
end

uic.special.get_preset = function(name: string) -- # get preset info
    if uic.presets[name] then
        return uic.presets[name]
    end
end

uic.special.init_preset = function(object, info, properties) -- # play tween
    if object ~= nil and info ~= nil and properties ~= nil then
        local tween = uic.services.tween:Create(object, info, properties)
        tween:Play()
        return tween
    end
end

uic.special.drag = function(object, latency) -- # drag any object
    local vars = {state = nil, input = nil, init = nil, default = nil}

    local function update()
        local delta = vars.input.Position - vars.init
        local pos = UDim2.new(vars.default.X.Scale, vars.default.X.Offset + delta.X, vars.default.Y.Scale, vars.default.Y.Offset + delta.Y)

        uic.special.init_preset(object, TweenInfo.new(latency), {Position = pos})
    end

    object.InputBegan:connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            vars.state = true
            vars.init = input.Position
            vars.default = object.Position

            input.Changed:connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    vars.state = false
                end
            end)
        end
    end)

    object.InputChanged:connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement then
            vars.input = input
        end
    end)

    uic.services.uis.InputChanged:connect(function(input)
        if input == vars.input and vars.state then
            update()
        end
    end)
end

return uic
