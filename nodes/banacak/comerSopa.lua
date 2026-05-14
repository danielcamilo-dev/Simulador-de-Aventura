-- Constants
local ID = "banacak.comerSopa"

-- Dependencies
local Node = require("node")
local Choice = require("choice")

local node = Node:new(ID) ---@type Node

node.title = "Comer sopa"
node.description = "Você comeu a sopa, parece que não tem mais nada na vila, você vai embora. Derrepente você sente seu coração batendo muito forte, você começa a suar muito, até que não você não concegue mais respirar. A sopa estava envenenada por um mago."
node.gameOver = true

return node
