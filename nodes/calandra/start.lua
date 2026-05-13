-- Constants
local ID = "calandra.start"

-- Dependencies
local Node = require("node")
local Choice = require("choice")

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
-- TODO

-----------------------------------------------------

return node
