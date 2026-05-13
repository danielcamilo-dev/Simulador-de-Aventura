-- Constants
local ID = "banacak.sapo"

-- Dependencies
local Node = require("node")
local Choice = require("choice")
local Player = require("Player.player")

local node = Node:new(ID) ---@type Node

node.title = "Matar sapo."
node.description = "O sapo era muito poderoso para seu nivel, ele te deu um veneno."
node.showPlayerLife = true

table.insert(node.choices, Choice:new(
    "banacak.start",
    "Fugir."
))

return node
