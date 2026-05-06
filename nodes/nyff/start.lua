os.execute("chcp 65001")

-- Constants
local ID = "nyff.start"

-- Dependencies
local Node = require("node")
local Choice = require("choice")

-- Create Node

local node = Node:new(ID) ---@type Node

node.title = "Montanhas de Nyff."

node.description = "Está frio, não da para enxergar nada, a neve se espalha cada vez mais. Mas uma triste noticia te acompanha, você esqueceu sua mochila e te restou apenas uma batata congelada que estava no bolso. Mas você avista uma luz, uma luz que parecida com fogo."

node.header = [[
          /\
         /**\
        /****\   /\
       /      \ /**\
      /  /\    /    \        /\    /\  /\      /\            /\/\/\  /\
     /  /  \  /      \      /  \/\/  \/  \  /\/  \/\  /\  /\/ / /  \/  \
    /  /    \/ /\     \    /    \ \  /    \/ /   /  \/  \/  \  /    \   \
   /  /      \/  \/\   \  /      \    /   /    \
__/__/_______/___/__\___\__________________________________________________
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
