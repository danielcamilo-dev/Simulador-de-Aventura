-- Constants
local ID = "banacak.start"

-- Dependencies
local Node = require("node")
local Choice = require("choice")
local Sapo = require("Boses.sapo")

-- Create Node

local node = Node:new(ID) ---@type Node

node.title = "Floresta de banacak"
node.description = "Uma floresta que tem animais exóticos, mas também com muito perigo."
node.showPlayerLife = false
node.header = [[%{yellow}
                  \_/
                --(_)--
            .'.   / \
           / . \
          |  |. | ,-'-.
     ,-'-.\ \|  /(  .  )
    /  .  \  |, (  \|   )
   |  .|/  |_|_(    |/   )
    \._|,_/  |  '--.|..-'
 ______|_____|______|______
]]

-----------------------------------------------------
-- Create choices

local sapo = require("Boses.sapo")

table.insert(node.choices, Choice:new(
    "banacak.maca",
    "Comer uma estranha maçã roxa."
))

table.insert(node.choices, Choice:new(
    "banacak.sapo",
    "Tentar matar um sapo mutante."
))

table.insert(node.choices, Choice:new(
    "banacak.procurar",
    "Explorar floresta."
))

table.insert(node.choices, Choice:new(
    "start",
    "Sair da floresta."
))


return node