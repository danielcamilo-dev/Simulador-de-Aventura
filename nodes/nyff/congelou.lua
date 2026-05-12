local ID = "nyff.congelou"

local Node = require("node")
local Choice = require("choice")

local node = Node:new(ID) ---@type Node
node.title = "Congelou"
node.description = "%{cyan}Estava muito frio, você não aguentou"
node.gameOver = true

return node