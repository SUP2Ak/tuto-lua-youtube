local variable = "mon string"

print("variable [1] : ", variable)

variable = true

print("variable [2] : ", variable)

local variable2 <const> = 1

print("variable2 [1] : ", variable2)

-- variable2 = 2 -- => error

---@class func
---@param a number
---@param b boolean | string
---@return args
local function func(a,b)
    --if type(a) == "number" and (type(b) == "boolean" or type(b) == 'string') then
    --    return a, b
    --end
    --return print(string.format("erreur func => number: %s, boolean|string: %s", type(a), type(b)))
    if type(a) ~= "number" and (type(b)~= "number" or type(b) ~= "boolean") then
        return print(string.format("erreur func => number: %s, boolean|string: %s", type(a), type(b)))
    end
    return a, b
end

print("func [1] : ", func)
print("func [2] : ", func(1,false))

---@class func2
---@param value number
---@param bool boolean
---@return bool
local function func2(value, bool)
    if type(value) ~= 'number' or type(bool) ~= "boolean" then
        return print(string.format("erreur func2 : number: %s, boolean: %s", type(value), type(bool)))
    end
    if value == 1 then
        if bool then
            bool = false
        else
            bool = true
        end
    else
        bool = not bool
    end
    return bool
end

print("func2 => ", func2(true, false))