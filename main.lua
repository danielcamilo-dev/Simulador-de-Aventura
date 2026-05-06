-- Dependencias
local gameData = require("gameData")
local Node = require("node")
local Choice = require("choice")

local GameData = gameData:new() ---@type gameData
_G.game = GameData