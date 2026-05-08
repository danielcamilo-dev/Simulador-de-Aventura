local class = require("libs.middleclass")
local nodeLoader = require("nodeLoader")

---@class Engine
local Engine = class("Engine")

function Engine:initialize()
    
end

function Engine:runMainLoop()
    local node = game.activeNode

    -- Loop principal
    while not game.isOver do
        -- Limpar o terminal
            -- TODO
        
        -- Printar node
        self:printNode(node)

        -- Obter escolhas validas
        local validChoices = self:getValidChoices(node)

        -- Mostrar escolha valida
        self:showChoices(validChoices)
            -- TODO

        -- Perguntar ao usuario qual escolha ele quer fazer
            -- TODO

        -- Avanca para o proximo node
            -- TODO
        
        game.isOver = true
    end

    -- TODO
end

---@param node Node
function Engine:printNode(node)
    if node.header then
        print()
        print(node.header)
    end
    print("===== " .. node.title)
    print(node.description)
    print("=================================================")
end

---comment
---@param node Node
---@return Choice[]
function Engine:getValidChoices(node)
    local result = {} ---@type Choice[]
    for _, choice in pairs(node.choices) do
        if (not choice:hasCondition()) or (choice:hasCondition() and choice:runCondition()) then
            table.insert(result, choice)
        end
    end
    return result
end

---@param choices Choice
function Engine:showChoices(choices)
    for i, choice in pairs(choices) do
        print(string.format("%s. %s", i, choice.description))
    end 
end

return Engine