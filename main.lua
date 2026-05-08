-- Dependencias
local GameData = require("gameData")
local nodeLoader = require("nodeLoader")
local Engine = require("engine")
local utils = require("utils")

local GameData = gameData:new() ---@type gameData
_G.game = GameData

utils.enableUTF8()

-- Load nodes
nodeLoader.loadNodes()
GameData.activeNode = nodeLoader.getInitialNode()

-- Start Engine
local engine = Engine:new() ---@type Engine
engine:runMainLoop()