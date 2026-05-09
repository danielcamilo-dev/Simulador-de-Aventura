local class = require("libs.middleclass")
local ansicolorsx = require("libs.ansicolorsx")
local nodeLoader = require("nodeLoader")
local utils = require("utils")

---@class Engine
local Engine = class("Engine")

--- Funcao para definir print como uma funcao do ansicolorsx para mudar a cor
---@param ... string
local function print(...)
    _G.print(ansicolorsx(...))
end

local function iowrite(...)
    io.write(ansicolorsx(...))
end

function Engine:initialize()
    
end

function Engine:runMainLoop()
    -- Loop principal
    while not game.isOver do
        -- Get active node
        local node = game.activeNode
        
        -- Limpar o terminal
        utils.clearTerminal()

        -- Printar node
        self:printNode(node)

        -- Obter escolhas validas
        local validChoices = self:getValidChoices(node)

        -- Mostrar escolha valida
        self:showChoices(validChoices)

        -- Perguntar ao usuario qual escolha ele quer fazer
        local choiceIndex = self:askForInput(#validChoices)
        local choice = validChoices[choiceIndex]

        -- Avanca para o proximo node
        local destinationId = choice.destination
        local nextStage = nodeLoader.getNode(destinationId)
        game.activeNode = nextStage
        
        -- game.isOver = true
    end

    -- TODO
end

---@param node Node
function Engine:printNode(node)
    if node.header then
        print()
        print(node.header)
    end
    print("----- %{white}" .. node.title .. " -----")
    print(node.description)
    print("-------------------------------------------------")
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

--- Mostra as choices pro usuario
---@param choices Choice
function Engine:showChoices(choices)
    for i, choice in pairs(choices) do
        print("%{white}" .. i .. ": %{yellow}" .. choice.description)
    end 
end

---@param amount number
---@return number
function Engine:askForInput(amount)
    while true do
        iowrite("> ")

        local answerString = io.read()
        local answer = tonumber(answerString)
        local isValidAnswer = answer ~= nil and answer >= 1 and answer <= amount
        

        if isValidAnswer then
            return answer
        else
            print(("%{red}Resposta invalida, tente novamente."))
        end
    end
end

return Engine