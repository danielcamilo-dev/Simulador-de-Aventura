-- Constants
local ID = "calandra.mina"

-- Dependencies
local Node = require("node")
local Choice = require("choice")
local chave = require("nodes.calandra.chave")

local node = Node:new(ID) ---@type Node

node.title = "Dinheiro"
node.description = "Você entrou na mina, chegou mais perto da escuridão e percebeu que tinha uma tranca para poder entrar, você lembra da chave que o mago avia te entregado, você saca a chave do bolso e abre a fechadura, você ve uma porta com um feixo de luz, quando você entra você ve uma sala com muito dinheiro, e uma carta dizendo, seja sempre assim garoto, ajude o proximo mesmo que você não ganhe nada."
node.gameWon = true

return node
