os.execute("chcp 65001")

-- Constants
local ID = "kalandra.start"

-- Dependencies
local Node = require("node")
local Choice = require("choice")

-- Create Node

local node = Node:new(ID) ---@type Node

node.title = "Praia de Kalandra."

node.description = "Está um dia ensolarado, com o sol iluminando toda a praia, mas algo estranho te pertuba, a praia esta vazia, mas ainda com utensilhos de outras pessoas, sua intuição diz que algo está errado."

node.header = [[
_\/_                 |                _\/_
/o\\             \       /            //o\
 |                 .---.                |
_|_______     --  /     \  --     ______|__
         `~^~^~^~^~^~^~^~^~^~^~^~`
]]

-----------------------------------------------------
-- Create choices
-- TODO

table.insert(node.choices, Choice:new(
    "kalandra.start",
    "Para a praia ensolarada de Kalandra"
))

table.insert(node.choices, Choice:new(
    "nyff.start",
    "Para as montanhas geladas de Nyff"
))

-----------------------------------------------------

return node
