local class = require("libs.middleclass")

---@class Choice
local Choice = class("Choice")

function Choice:initialize(destination, description, condition)
    self.description = description ---@type string
    self.destination = destination ---@type string
    self.condition = condition
end

--- Retorna se a escolha tem uma condição para ser executada.
--- @return boolean
function Choice:hasCondition()
    return self.condition ~= nil
end

--- Executa a função de condição e retorna se ela foi autorizada
--- @return boolean
function Choice:runCondition()
    -- TODO
    return true -- Por enqunato
end

return Choice