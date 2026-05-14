-- Constants
local ID = "calandra.roubarAgricultura"

-- Dependencies
local Node = require("node")
local Choice = require("choice")
local chave = require("nodes.calandra.chave")

local node = Node:new(ID) ---@type Node

node.title = "isso foi roubo"
node.description = "O dono da cidade estava por lá, ele te viu roubando e descidiu te prender para sempre."
node.gameOver = true

return node
