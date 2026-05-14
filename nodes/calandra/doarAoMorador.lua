-- Constants
local ID = "calandra.doarAoMorador"

-- Dependencies
local Node = require("node")
local Choice = require("choice")
local chave = require("nodes.calandra.chave")

local node = Node:new(ID) ---@type Node

node.title = "chave"
node.description = "Na verdade ele não era uma morador de rua, ele era um bruxo, e te recompensa com uma chave. Você não sabia aonde ela encaixava."
node.header = [[
%{yellow}
     8 8 8 8                     ,ooo.
     8a8 8a8                    oP   ?b
    d888a888zzzzzzzzzzzzzzzzzzzz8     8b
     `""^""'                    ?o___oP'

]]

table.insert(node.choices, Choice:new(
    "calandra.start",
    "Ok."
))

return node
