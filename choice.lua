local class = require("libs.middleclass")

---@class Choice
local Choice = class("Choice")

function Choice:initialize(destination, description, condition, routine)
    self.description = description ---@type string
    self.destination = destination ---@type string
    self.condition = condition ---@type fun():boolean
    self.routine = routine ---@type function
end

--- Retorna se a escolha tem uma condição para ser executada.
--- @return boolean
function Choice:hasCondition()
    return self.condition ~= nil
end

--- Executa a função de condição e retorna se ela foi autorizada
--- @return boolean
function Choice:runCondition()
    if self.condition ~= nil and type(self.condition) == "function" then
        return self.condition()
    end
    return true
end

--- Executa a função de condição e retorna se ela foi autorizada
function Choice:runRoutine()
    if self.routine ~= nil and type(self.routine) == "function" then
        return self.routine()
    end
end

return Choice