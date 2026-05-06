local class = require("libs.middleclass")

---@class gameData
local gameData = class("gameData")

function gameData:initialize()
    self.activeNode = nil ---@type Node
    self.isOver = false ---@type boolean
end

return gameData