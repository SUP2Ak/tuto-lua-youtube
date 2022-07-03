-- Chapitre 1

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

-- Chapitre 1.1

local j = {}
local bool = true -- false
local chaine = "string" -- chaine de caractère
local rien = nil -- ne vaut rien
local table = {} -- table
local nombre = 0 -- nombre
local function func3(...) -- fonction

end


local func4 = function() -- fonction
    varglobal = 4
end

varglobal = ""

if condition then -- bloc de code
    
end

---@class func5
---@param a any
---@param b boolean
---@param c table | string
---@param d any
---@return args
local function func5(a,b,c,d)
    return a,b,c,d
end

print(func5("string", true, json.encode({"string", true}), nil))

---@class func6
---@param a number
---@param b number
local function func6(a,b)
    local j = a + b
    print(j)
end
print(func6(5,6))

--- Chapitre 1.2

local function f1(a,b)
    assert(type(a) == "number", "ERROR : a n'est pas un nombre")
    assert(type(b) == "boolean", "ERROR : b n'est pas un boolean")
    return a,b
end

print(f1(1,true)) -- ok
--print(f1(true, true)) -- error

local function f2(a)
    xpcall(function()
        a /= 2 -- ok
        --a -= nil -- error
        print(a)
    end, function(err)
        if err then
            print("ERROR : "..err)
        end
    end)
end

--f2() -- error
f2(10) -- ok

local function f3(a)
    a *= 2
    print(a)
end

if pcall(f3, 2) then
    print('ok')
else
    print('error')
end


--[[      
    OPERATOR LUA 5.4
    // local a = 10
    -->    a += 2     =>     a = a + 2
    -->    a -= 2     =>     a = a - 2
    -->    a *= 2     =>     a = a * 2
    -->    a /= 2     =>     a = a / 2
--]]