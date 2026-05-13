-- Constants
local ID = "banacak.sapo"

-- Dependencies
local Node = require("node")
local Choice = require("choice")

local node = Node:new(ID) ---@type Node

node.title = "Matar sapo."
node.description = "Você tentou ataca-lo pelas costas, mas então ele agiu mais rapido que você e te envenenou, você quase morreu. Oque você vai fazer?"

table.insert(node.choices, Choice:new(
    "banacak.start",
    "Fugir."
))

table.insert(node.choices, Choice:new(
    "banacak.revidar",
    "Revidar."
))

return node
