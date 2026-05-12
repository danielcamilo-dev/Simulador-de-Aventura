local utils = {}

-- habilita o UTF8
function utils.enableUTF8()
    os.execute("chcp 65001")
    if utils.isWindows() then
        os.execute("cls")
    else
        os.execute("clear")
    end
end

function utils.isWindows()
  return type(package) == 'table' and type(package.config) == 'string' and package.config:sub(1,1) == '\\'
end

function utils.clearTerminal()
    if utils.isWindows() then
        os.execute("cls")
    else
        os.execute("clear")
    end
end

function utils.getHeaderGameOver()
    return [[
%{red}    
  /$$$$$$                                           /$$$$$$                               
 /$$__  $$                                         /$$__  $$                              
| $$  \__/  /$$$$$$  /$$$$$$/$$$$   /$$$$$$       | $$  \ $$ /$$    /$$ /$$$$$$   /$$$$$$ 
| $$ /$$$$ |____  $$| $$_  $$_  $$ /$$__  $$      | $$  | $$|  $$  /$$//$$__  $$ /$$__  $$
| $$|_  $$  /$$$$$$$| $$ \ $$ \ $$| $$$$$$$$      | $$  | $$ \  $$/$$/| $$$$$$$$| $$  \__/
| $$  \ $$ /$$__  $$| $$ | $$ | $$| $$_____/      | $$  | $$  \  $$$/ | $$_____/| $$      
|  $$$$$$/|  $$$$$$$| $$ | $$ | $$|  $$$$$$$      |  $$$$$$/   \  $/  |  $$$$$$$| $$      
 \______/  \_______/|__/ |__/ |__/ \_______/       \______/     \_/    \_______/|__/      
                                                                                                                                                                         
    ]]
end

function utils.getHeaderGameWon()
    return [[
%{green}    
  /$$$$$$                                          /$$      /$$                    
 /$$__  $$                                        | $$  /$ | $$                    
| $$  \__/  /$$$$$$  /$$$$$$/$$$$   /$$$$$$       | $$ /$$$| $$  /$$$$$$  /$$$$$$$ 
| $$ /$$$$ |____  $$| $$_  $$_  $$ /$$__  $$      | $$/$$ $$ $$ /$$__  $$| $$__  $$
| $$|_  $$  /$$$$$$$| $$ \ $$ \ $$| $$$$$$$$      | $$$$_  $$$$| $$  \ $$| $$  \ $$
| $$  \ $$ /$$__  $$| $$ | $$ | $$| $$_____/      | $$$/ \  $$$| $$  | $$| $$  | $$
|  $$$$$$/|  $$$$$$$| $$ | $$ | $$|  $$$$$$$      | $$/   \  $$|  $$$$$$/| $$  | $$
 \______/  \_______/|__/ |__/ |__/ \_______/      |__/     \__/ \______/ |__/  |__/
                                                                                                                                                                                                                                                                                                                             
    ]]
end

return utils