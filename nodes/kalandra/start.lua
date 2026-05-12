-- Constants
local ID = "kalandra.start"

-- Dependencies
local Node = require("node")
local Choice = require("choice")

-- Create Node

local node = Node:new(ID) ---@type Node

node.title = "Praia de Kalandra"

node.description = "Está um dia ensolarado, com o sol iluminando toda a praia, mas algo estranho te pertuba, a praia esta vazia, mas ainda com utensilhos de outras pessoas, sua intuição diz que algo está errado."

node.header = [[%{yellow}
_\/_                 |                _\/_
/o\\             \       /            //o\
 |                 .---.                |
_|_______     --  /     \  --     ______|__
         `~^~^~^~^~^~^~^~^~^~^~^~`
]]

-----------------------------------------------------
-- Create choices
-- TODO

-----------------------------------------------------

return node
