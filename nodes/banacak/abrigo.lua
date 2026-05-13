-- Constants
local ID = "banacak.abrigo"

-- Dependencies
local Node = require("node")
local Choice = require("choice")

local node = Node:new(ID) ---@type Node

node.title = "Abrigo"
node.description = "Você achou um abrigo, você dorme e espera o amanhecer."

table.insert(node.choices, Choice:new(
    "banacak.start",
    "Sair da cabana."
))

return node
