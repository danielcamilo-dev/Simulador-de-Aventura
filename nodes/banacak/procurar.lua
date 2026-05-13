-- Constants
local ID = "banacak.procurar"

-- Dependencies
local Node = require("node")
local Choice = require("choice")

local node = Node:new(ID) ---@type Node

node.title = "Procurar Algo"
node.description = "Você ficou procurando por horas, até que achou uma pequena vila abandonada, mas já tinha anoitecido, o que você vai fazer?"
node.header = [[
%{yellow}

                                           '                       '            
'                                 o    '                       .                
                                               |                                
       *        '             +.              -+-   '          .-.              
        +            '    .:'      .        .  |             '(   )             
          .   '       _.::'      *                             `-'              
' '  +             * (_.'           . +                                         
                                                           +      .:'           
 .               .             .      +                       _.::'  .  o      +
  '                    +   .      *.    '                |   (_.'               
                          +                      '     - o -                    
                   .  '  + *              '     .        |   . .              . 
                  +o   |         *       *                      .               
   '                 - o -                o ':.          '                      
   .               '   |                      '::._   +     '     .           + 
                            + .                 '._) +     +                    
                                      '          o                 '            
        '           .                       '  .  .                             
       .                 '                  *                                   
                                                                    o   
                                                                    
]]

table.insert(node.choices, Choice:new(
    "banacak.vila",
    "Ir à vila."
))

table.insert(node.choices, Choice:new(
    "banacak.abrigo",
    "Achar um abrigo para dormir."
))

return node
