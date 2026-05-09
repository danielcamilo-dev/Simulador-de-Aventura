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

return utils