local nodeLoader = {}

local nodeDicitionary = {} ---@type table <string, Node>
local initialNode = nil ---@type Node
local hasError = false ---@type boolean

-------------------------------------------------

local function loadNode(path)
    local node = require(path)

    if node == nil then
        warn(string.format("Falha ao carregar o node %s. O node nao existe", node))
        hasError = true
        return nil
    end
    
    if nodeDicitionary[node.id] ~= nil then
        warn(string.format("Falha ao carregar o node %s. O node foi duplicado", node))
        hasError = true
        return nil
    end
    nodeDicitionary[node.id] = node
    return node
end

---@param parentNode Node
local function loadNodesFromChoice(parentNode)
    for _, Choice in pairs(parentNode.choices) do
        local destinationId = Choice.destination

        if not nodeDicitionary[destinationId] then
            local childNode = loadNode("nodes." .. destinationId)
            if childNode then
                loadNodesFromChoice(childNode)
            end
        end
    end
end

--- Carrega todos os nodes internamente
function nodeLoader.loadNodes()
    nodeDicitionary = {}
    initialNode = require("nodes.start")

    nodeDicitionary[initialNode.id] = initialNode

    loadNodesFromChoice(initialNode)

    -- Validate destinations
    for id, node in pairs(nodeDicitionary) do
        for _, choice in pairs(node.choices) do
            local destinationId = choice.destination
            local destinationNode = nodeDicitionary[destinationId]

            if destinationNode == nil then
                warn(string.format("Uma das escolhas do node %s tem com destino um node existente: %s", node.id, destinationNode))
                hasError = true
                return nil
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

--- Retorna se tem erros na execução.
---@return boolean
function nodeLoader.hasErrors()
    return hasError
end

return nodeLoader