-- Dependencias
local GameData = require("gameData")
local nodeLoader = require("nodeLoader")
local Engine = require("engine")
local utils = require("utils")

local GameData = GameData:new() ---@type gameData
_G.game = GameData

utils.enableUTF8()

-- Load nodes
nodeLoader.loadNodes()
GameData.activeNode = nodeLoader.getInitialNode()

if nodeLoader.hasErrors() then
    print("Found errors in nodeLoader, aborting progam!")
    os.exit()
end

-- Start Engine
local engine = Engine:new() ---@type Engine
engine:runMainLoop()