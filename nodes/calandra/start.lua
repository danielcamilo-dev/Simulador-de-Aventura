-- Constants
local ID = "calandra.start"

-- Dependencies
local Node = require("node")
local Choice = require("choice")
local chave = require("nodes.calandra.chave")
local sopa = require("nodes.banacak.sopa")

-- Create Node

local node = Node:new(ID) ---@type Node

node.title = "Cidade de calandra"

node.description = "Uma cidade não reconhecida, muito pobre, mas tem um tesouro que poucos reconhecem, uma mina, e muita agricultura."

node.header = [[%{yellow}
~         ~~          __        
       _T      .,,.    ~--~ ^^  
 ^^   // \                    ~ 
      ][O]    ^^      ,-~ ~     
   /''-I_I         _II____      
__/_  /   \ ______/ ''   /'\_,__
  | II--'''' \,--:--..,_/,.-{ },
; '/__\,.--';|   |[] .-.| O{ _ }
:' |  | []  -|   ''--:.;[,.'\,/ 
'  |[]|,.--'' '',   ''-,.    |  
  ..    ..-''    ;       ''. '  
]]

-----------------------------------------------------
-- Create choices

table.insert(node.choices, Choice:new(
    "calandra.doarAoMorador",
    "Dar a sopa ao um morador de rua que estava sentado ao lado de um bar.",
    function ()
        return sopa.temSopa == true
    end,
    function ()
        chave.temChave = true
        sopa.temSopa = false
    end
))

table.insert(node.choices, Choice:new(
    "start",
    "Sair de Calandra."
))

table.insert(node.choices, Choice:new(
    "calandra.roubarAgricultura",
    "Colher agricultura sem permissão."
))

table.insert(node.choices, Choice:new(
    "calandra.mina",
    "Entrar em uma mina misteriosa.",
    function ()
        return chave.temChave == true
    end
))

-----------------------------------------------------

return node
