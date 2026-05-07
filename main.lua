-- Dependencias
local gameData = require("gameData")
local nodeLoader = require("nodeLoader")

local GameData = gameData:new() ---@type gameData
_G.game = GameData

-- Load nodes
nodeLoader.loadNodes()
for id, node in pairs(nodeLoader.getNodes()) do
    print(string.format("%s: %s", id, node.title))
end

local initialNode = nodeLoader.getInitialNode()
print(initialNode.id, initialNode.description)