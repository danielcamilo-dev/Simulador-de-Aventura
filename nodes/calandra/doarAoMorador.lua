-- Constants
local ID = "calandra.doarAoMorador"

-- Dependencies
local Node = require("node")
local Choice = require("choice")

local node = Node:new(ID) ---@type Node

node.title = "Abrigo"
node.description = "Você achou um abrigo, você dorme e espera o amanhecer."

table.insert(node.choices, Choice:new(
    "",
    "Dar comida ao um morador de rua que estava sentado ao lado de um bar.",
    function ()
        for i, v in pairs(player.comidas) do
            print(v)
        end
    end
))

return node
