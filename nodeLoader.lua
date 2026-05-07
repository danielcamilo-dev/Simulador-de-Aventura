local nodeLoader = {}

local nodeDicitionary = {} ---@type table <string, Node>
local initialNode = nil ---@type Node

-------------------------------------------------

local function loadNode(path)
    local node = require(path)

    if node == nil then
        warn(string.format("Falha ao carregar o node %s. O node nao existe", node))
        return
    end
    
    if nodeDicitionary[node.id] ~= nil then
        warn(string.format("Falha ao carregar o node %s. O node foi duplicado", node))
        return
    end
    nodeDicitionary[node.id] = node
end

--- Carrega todos os nodes internamente
function nodeLoader.loadNodes()
    nodeDicitionary = {}
    initialNode = require("nodes.start")

    nodeDicitionary[initialNode] = initialNode

    -- Carregar outros nodes
    loadNode("nodes.nyff.start")
    loadNode("nodes.kalandra.start")
end

--- Retorna todos os nodes criados por esse script
--- @return table <string, Node>
function nodeLoader.getNodes()
    return nodeDicitionary
end

--- Retorna o node associado ao id
---@param nodeId string
---@return Node
function nodeLoader.getNode(nodeId)
    return nodeDicitionary[nodeId]
end

--- Pega o node inicial do simulador e retorna ele
--- @return Node
function nodeLoader.getInitialNode()
    return initialNode
end

return nodeLoader