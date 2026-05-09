local utils = {}

-- habilita o UTF8
function utils.enableUTF8()
    os.execute("chcp 65001")
end

local function isWindows()
  return type(package) == 'table' and type(package.config) == 'string' and package.config:sub(1,1) == '\\'
end

function utils.clearTerminal()
    if isWindows then
        os.execute("cls")
    else
        os.execute("clear")
    end
end

return utils