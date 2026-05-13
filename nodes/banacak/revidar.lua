-- Constants
local ID = "banacak.revidar"

-- Dependencies
local Node = require("node")
local Choice = require("choice")

local node = Node:new(ID) ---@type Node

node.title = "Ele te matou com o veneno"
node.description = "Você tenta revidar, mas ele lança sua lingua gosmenta e venenosa na sua cabeça, e você morre sufocado."
node.gameOver = true

return node
