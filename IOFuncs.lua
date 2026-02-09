function SaveSettings(Settings)
    local file = io.open("Settings.txt", "w")
    if file then
        -- Write each setting in the format key=value
        file:write("XRes=" .. tostring(Settings.XRes) .. "\n")
        file:write("YRes=" .. tostring(Settings.YRes) .. "\n")
        file:write("MSAA=" .. tostring(Settings.MSAA) .. "\n")
        file:write("Fullscreen=" .. tostring(Settings.Fullscreen) .. "\n")
        file:write("FontModRaw=" .. tostring(Settings.FontModRaw) .. "\n")
        file:write("FontModPercent=" .. tostring(Settings.FontModPercent) .. "\n")
        file:write("LineModifier=" .. tostring(Settings.LineModifier) .. "\n")
        file:write("AudioRaw=".. tostring(Settings.AudioRaw) .. "\n")
        file:write("AudioPercent=".. tostring(Settings.AudioPercent) .. "\n")
        file:write("DarkMode=".. tostring(Settings.DarkMode) .. "\n")
        file:write("ReducedFlicker=".. tostring(Settings.ReducedFlicker) .. "\n")
        file:write("FontSelected=".. tostring(Settings.FontSelected) .. "\n")
        file:close() -- Close the file
        return 1 -- Success
    else
        return 0 -- Error
    end
end
function LoadSettingsIO(Settings)
    local file = io.open("Settings.txt", "r")
    if file then
        local line=file:read("*l")
        Settings.XRes=tonumber(line:match("=(.+)"))
        line=file:read("*l")
        Settings.YRes=tonumber(line:match("=(.+)"))
        line=file:read("*l")
        Settings.MSAA=tonumber(line:match("=(.+)"))
        line=file:read("*l")
        Settings.Fullscreen=toboolean(line:match("=(.+)"))
        line=file:read("*l")
        Settings.FontModRaw=tonumber(line:match("=(.+)"))
        line=file:read("*l")
        Settings.FontModPercent=tonumber(line:match("=(.+)"))
        line=file:read("*l")
        Settings.LineModifier=tonumber(line:match("=(.+)"))
        line=file:read("*l")
        Settings.AudioRaw=tonumber(line:match("=(.+)"))
        line=file:read("*l")
        Settings.AudioPercent=tostring(line:match("=(.+)"))
        line=file:read("*l")
        Settings.DarkMode=toboolean(line:match("=(.+)"))
        line=file:read("*l")
        Settings.ReducedFlicker=toboolean(line:match("=(.+)"))
        line=file:read("*l")
        Settings.FontSelected=tostring(line:match("=(.+)"))
        file:close()
        return 1 -- Success
    else
        print("Error in LoadSettingsIO, file could not be opened")
        return 0 -- Error: file couldn't be opened
    end
end