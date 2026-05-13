-- Constants
local ID = "banacak.comerSopa"

-- Dependencies
local Node = require("node")
local Choice = require("choice")

local node = Node:new(ID) ---@type Node

node.title = "Comer sopa"
node.description = "Você comeu a sopa, parece que não tem mais nada na vila, você vai embora."
node.showPlayerLife = true

table.insert(node.choices, Choice:new(
    "banacak.procurar",
    "Ok."
))

return node
