-- Constants
local ID = "banacak.maca"

-- Dependencies
local Node = require("node")
local Choice = require("choice")

local node = Node:new(ID) ---@type Node

node.title = "COMER MAÇÃ ROXA."
node.description = "Ela era uma fruta envenenada, você infelizmente não agunetou."
node.gameOver = true

return node
