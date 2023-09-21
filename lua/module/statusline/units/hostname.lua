
function hostname()
    local sys_name = vim.loop.os_gethostname()

    if sys_name == "fedora"  then
        return "%#fedora#" .. "  󰮤  "
    elseif sys_name == "ubuntu" then
        return "%#ubuntu#" .. "    "
    elseif sys_name == "arch" then
        return "%#arch#" .. "  󰣇  "
    elseif sys_name == "debian" then
        return "%#debian#".. "    "
    -- elseif sys_name == "windows" then
    --     return " 󰨡  "
    elseif sys_name == "hackintosh" then
        return "%#hackintosh#" .. "    "
    end

    return ''
end

