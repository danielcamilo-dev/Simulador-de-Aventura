-- Constants
local ID = "banacak.vila"

-- Dependencies
local Node = require("node")
local Choice = require("choice")
local utils = require("utils")
local Sopa = require("nodes.banacak.sopa")

local node = Node:new(ID) ---@type Node

local hasFood = true ---@type boolean

node.title = "Indo À vila"
node.description = "Você chegou na vila, esta tudo cheio de teia de aranha gigante."
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
    "banacak.procurar",
    "Guardar uma sopa e sair da vila.",
    function ()
        return hasFood == true
    end,
    function ()
        Sopa.temSopa = true
        hasFood = false
    end
))

table.insert(node.choices, Choice:new(
    "banacak.comerSopa",
    "Comer uma sopa que parecia de boa qualidade e sair da vila.",
    function ()
        return hasFood == true
    end,
    function ()
        hasFood = false
        Sopa.temSopa = true
    end
))

return node
