-- Constants
local ID = "banacak.vila"

-- Dependencies
local Node = require("node")
local Choice = require("choice")

local node = Node:new(ID) ---@type Node

local hasFood = true
local sopa = {
    lifeRegen = 50,
    estragada = false
}

node.title = "Indo À vila"
node.description = "Você chegou na vila, esata tudo cheio de teia de aranha gigante."
node.header = [[ 
%{yellow}
            |   _   _
      . | . x .|.|-|.|
   |\ ./.\-/.\-|.|.|.|
~~~|.|_|.|_|.|.|.|_|.|~~~

]]

table.insert(node.choices, Choice:new(
    "banacak.procurar",
    "Sair da vila."
))

table.insert(node.choices, Choice:new(
    "banacak.comerSopa",
    "Comer a sopa que parecia de boa qualidade e sair da vila.",
    function()
        return hasFood == true and player.playerLife < player.playerMaxLife
    end,
    function()
        hasFood = false
        player.playerLife = player.playerLife + sopa.lifeRegen
    end
))

return node
