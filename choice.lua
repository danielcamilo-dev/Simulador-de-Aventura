local class = require("libs.middleclass")

---@class Choice
local Choice = class("Choice")

function Choice:initialize()
    self.description = nil ---@type string
    self.destination = nil ---@type string
    self.condition = nil
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