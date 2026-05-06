-- Constants
local ID = "start"

-- Dependencies
local Node = require("node")
local Choice = require("choice")

-- Create Node

local node = Node:new(ID) ---@type Node

node.title = "Uma nova aventura"

node.description = "Em uma bela manhã, você acorda com a motivação de explorar em mais uma aventura. Para onde você vai?"

node.header = [[
<=========================================>
   A D V E N T U R E   S I M U L A T O R
<=========================================>
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