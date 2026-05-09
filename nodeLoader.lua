local nodeLoader = {}

local nodeDicitionary = {} ---@type table <string, Node>
local initialNode = nil ---@type Node
local hasError = false

-------------------------------------------------

local function loadNode(path)
    local node = require(path)

    if node == nil then
        warn(string.format("Falha ao carregar o node %s. O node nao existe", node))
        hasError = true
        return
    end
    
    if nodeDicitionary[node.id] ~= nil then
        warn(string.format("Falha ao carregar o node %s. O node foi duplicado", node))
        hasError = true
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

    -- Validate destinations
    for id, node in pairs(nodeDicitionary) do
        for _, choice in pairs(node.choices) do
            local destinationId = choice.destination
            local destinationNode = nodeDicitionary[destinationId]

            if destinationNode == nil then
                warn(string.format("Uma das escolhas do node %s tem com destino um node existente: %s", node.id, destinationNode))
                hasError = true
            end
        end
    end
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

function nodeLoader.hasErrors()
    return hasError
end

return nodeLoader