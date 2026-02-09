function LoadFonts()
    if Settings.FontSelected=="Stylized" then
        SmallBodyFont=love.graphics.newFont("Fonts/Exo2.ttf", scaling(20,1080,Settings.YRes,true)+FontTransform())
        SmallBodyFontBold=love.graphics.newFont("Fonts/Exo2-Bold.ttf", scaling(20,1080,Settings.YRes,true)+FontTransform())
        BodyFont=love.graphics.newFont("Fonts/Exo2.ttf", scaling(24,1080,Settings.YRes,true)+FontTransform())
        BodyFontBold=love.graphics.newFont("Fonts/Exo2-Bold.ttf", scaling(24,1080,Settings.YRes,true)+FontTransform())
        LargeBodyFont=love.graphics.newFont("Fonts/Exo2.ttf", scaling(28,1080,Settings.YRes,true)+FontTransform())
        LargeBodyFontBold=love.graphics.newFont("Fonts/Exo2-Bold.ttf", scaling(28,1080,Settings.YRes,true)+FontTransform())
        SmallHeaderBold=love.graphics.newFont("Fonts/Exo2-Bold.ttf", scaling(32,1080,Settings.YRes,true))
        MediumHeaderBold=love.graphics.newFont("Fonts/IBMPlexMono-Bold.ttf", scaling(34,1080,Settings.YRes,true))
        LargeHeader=love.graphics.newFont("Fonts/IBMPlexMono-Bold.ttf", scaling(60,1080,Settings.YRes,true))
    end
    if Settings.FontSelected=="Exo2" then
        SmallBodyFont=love.graphics.newFont("Fonts/Exo2.ttf", scaling(20,1080,Settings.YRes,true)+FontTransform())
        SmallBodyFontBold=love.graphics.newFont("Fonts/Exo2-Bold.ttf", scaling(20,1080,Settings.YRes,true)+FontTransform())
        BodyFont=love.graphics.newFont("Fonts/Exo2.ttf", scaling(24,1080,Settings.YRes,true)+FontTransform())
        BodyFontBold=love.graphics.newFont("Fonts/Exo2-Bold.ttf", scaling(24,1080,Settings.YRes,true)+FontTransform())
        LargeBodyFont=love.graphics.newFont("Fonts/Exo2.ttf", scaling(28,1080,Settings.YRes,true)+FontTransform())
        LargeBodyFontBold=love.graphics.newFont("Fonts/Exo2-Bold.ttf", scaling(28,1080,Settings.YRes,true)+FontTransform())
        SmallHeaderBold=love.graphics.newFont("Fonts/Exo2-Bold.ttf", scaling(32,1080,Settings.YRes,true))
        MediumHeaderBold=love.graphics.newFont("Fonts/Exo2-Black.ttf", scaling(34,1080,Settings.YRes,true))
        LargeHeader=love.graphics.newFont("Fonts/Exo2-Black.ttf", scaling(60,1080,Settings.YRes,true))
    end
    if Settings.FontSelected=="AtkinsonHyperlegible" then
        SmallBodyFont=love.graphics.newFont("Fonts/AtkinsonHyperlegible-Regular.ttf", scaling(20,1080,Settings.YRes,true)+FontTransform())
        SmallBodyFontBold=love.graphics.newFont("Fonts/AtkinsonHyperlegible-Bold.ttf", scaling(20,1080,Settings.YRes,true)+FontTransform())
        BodyFont=love.graphics.newFont("Fonts/AtkinsonHyperlegible-Regular.ttf", scaling(24,1080,Settings.YRes,true)+FontTransform())
        BodyFontBold=love.graphics.newFont("Fonts/AtkinsonHyperlegible-Bold.ttf", scaling(24,1080,Settings.YRes,true)+FontTransform())
        LargeBodyFont=love.graphics.newFont("Fonts/AtkinsonHyperlegible-Regular.ttf", scaling(28,1080,Settings.YRes,true)+FontTransform())
        LargeBodyFontBold=love.graphics.newFont("Fonts/AtkinsonHyperlegible-Bold.ttf", scaling(28,1080,Settings.YRes,true)+FontTransform())
        SmallHeaderBold=love.graphics.newFont("Fonts/AtkinsonHyperlegible-Bold.ttf", scaling(32,1080,Settings.YRes,true))
        MediumHeaderBold=love.graphics.newFont("Fonts/AtkinsonHyperlegible-Bold.ttf", scaling(34,1080,Settings.YRes,true))
        LargeHeader=love.graphics.newFont("Fonts/AtkinsonHyperlegible-Bold.ttf", scaling(60,1080,Settings.YRes,true))
    end
    if Settings.FontSelected=="IBMPlex" then
        SmallBodyFont=love.graphics.newFont("Fonts/IBMPlexMono-Regular.ttf", scaling(20,1080,Settings.YRes,true)+FontTransform())
        SmallBodyFontBold=love.graphics.newFont("Fonts/IBMPlexMono-Bold.ttf", scaling(20,1080,Settings.YRes,true)+FontTransform())
        BodyFont=love.graphics.newFont("Fonts/IBMPlexMono-Regular.ttf", scaling(24,1080,Settings.YRes,true)+FontTransform())
        BodyFontBold=love.graphics.newFont("Fonts/IBMPlexMono-Bold.ttf", scaling(24,1080,Settings.YRes,true)+FontTransform())
        LargeBodyFont=love.graphics.newFont("Fonts/IBMPlexMono-Regular.ttf", scaling(28,1080,Settings.YRes,true)+FontTransform())
        LargeBodyFontBold=love.graphics.newFont("Fonts/IBMPlexMono-Bold.ttf", scaling(28,1080,Settings.YRes,true)+FontTransform())
        SmallHeaderBold=love.graphics.newFont("Fonts/IBMPlexMono-Bold.ttf", scaling(32,1080,Settings.YRes,true))
        MediumHeaderBold=love.graphics.newFont("Fonts/IBMPlexMono-Bold.ttf", scaling(34,1080,Settings.YRes,true))
        LargeHeader=love.graphics.newFont("Fonts/IBMPlexMono-Bold.ttf", scaling(60,1080,Settings.YRes,true))
    end
    if Settings.FontSelected=="OpenDyslexic" then
        SmallBodyFont=love.graphics.newFont("Fonts/OpenDyslexic-Regular.otf", scaling(16,1080,Settings.YRes,true)+FontTransform())
        SmallBodyFontBold=love.graphics.newFont("Fonts/OpenDyslexic-Bold.otf", scaling(16,1080,Settings.YRes,true)+FontTransform())
        BodyFont=love.graphics.newFont("Fonts/OpenDyslexic-Regular.otf", scaling(20,1080,Settings.YRes,true)+FontTransform())
        BodyFontBold=love.graphics.newFont("Fonts/OpenDyslexic-Bold.otf", scaling(20,1080,Settings.YRes,true)+FontTransform())
        LargeBodyFont=love.graphics.newFont("Fonts/OpenDyslexic-Regular.otf", scaling(24,1080,Settings.YRes,true)+FontTransform())
        LargeBodyFontBold=love.graphics.newFont("Fonts/OpenDyslexic-Bold.otf", scaling(24,1080,Settings.YRes,true)+FontTransform())
        SmallHeaderBold=love.graphics.newFont("Fonts/OpenDyslexic-Bold.otf", scaling(24,1080,Settings.YRes,true))
        MediumHeaderBold=love.graphics.newFont("Fonts/OpenDyslexic-Bold.otf", scaling(28,1080,Settings.YRes,true))
        LargeHeader=love.graphics.newFont("Fonts/OpenDyslexic-Bold.otf", scaling(56,1080,Settings.YRes,true))
    end
    --fonts for setting menu
    SExo24=love.graphics.newFont("Fonts/Exo2.ttf", scaling(24,1080,Settings.YRes,true))
    SIBM24=love.graphics.newFont("Fonts/IBMPlexMono-Regular.ttf", scaling(24,1080,Settings.YRes,true))
    SAHL24=love.graphics.newFont("Fonts/AtkinsonHyperlegible-Regular.ttf", scaling(24,1080,Settings.YRes,true))
    SOD24=love.graphics.newFont("Fonts/OpenDyslexic-Regular.otf", scaling(24,1080,Settings.YRes,true))
    --line settings
    ThickLine=scaling(5,1080,Settings.YRes,true)
    MediumLine=scaling(3,1080,Settings.YRes,true)
    ThinLine=scaling(1,1080,Settings.YRes,true)
end
function LoadSettings()
    Settings={XRes=1024,YRes=576,MSAA=2,Fullscreen=false, FontModRaw=4, FontModPercent=5, LineModifier=3, AudioRaw=0, AudioPercent=5, DarkMode=false,ReducedFlicker=false,FontSelected="Exo2"}
    LoadSettingsIO(Settings)
    love.window.setMode(0, 0)
    if Settings.ReducedFlicker then
        love.timer.sleep(0.5)
        love.mouse.setPosition(0,0)
    end
    DetectedX = love.graphics.getWidth()
    DetectedY = love.graphics.getHeight()
    DetectedRes = DetectedX .. " x " .. DetectedY
    love.window.setMode(Settings.XRes,Settings.YRes,{msaa=Settings.MSAA, fullscreen=toboolean(Settings.Fullscreen), borderless=toboolean(Settings.Fullscreen), usedpiscale=false})
    if Settings.ReducedFlicker then
        love.timer.sleep(0.5)
        love.mouse.setPosition(0,0)
    end
    SettingsResolution=Settings.XRes
    SettingsResolutionDropDownClicked=false
    math.randomseed (os.time())
    TextEntry={}
    TextEntryWriter=0
    EditCursorPosition=0
end
function LoadEdit()
    EditActivityLoadOnce=false
    EditActivityScroll=0
    EditActivitySelectedTerm = nil
    EditActivitySelectedDefinition = nil
    EditCursorPosition=0
end
function LoadMouseClickDebounce()
    DebounceTimer=0
    DebounceTimers={}
end
function ConfirmSettings()
    SaveSettings(Settings)
    love.load()
end
function LoadViewSet()
    ViewActivityScroll=0
end
function LoadPopup()
    PopupCall=false
    PopupAction=""
    PopUpMessage=""
    BackoutAction=""
end
function ApplySettings(NewX,NewY)
    local PrevX=Settings.XRes
    local PrevY=Settings.YRes
    Settings.XRes=NewX
    Settings.YRes=NewY
    if NewX>DetectedX then
        Settings.XRes=DetectedX
    end
    if NewY>DetectedY then
        Settings.YRes=DetectedY
    end
    LoadFonts()
    if Settings.ReducedFlicker then
        love.timer.sleep(0.5)
        love.mouse.setPosition(0,0)
    end
    LoadActivities()
    LoadMouseClickDebounce()
    LoadPopup()
    love.window.setMode(Settings.XRes,Settings.YRes)
    if Settings.ReducedFlicker then
        love.timer.sleep(0.5)
        love.mouse.setPosition(0,0)
    end
    Settings.FontModRaw=scaling(Settings.FontModRaw,PrevX,Settings.XRes)
    Settings.AudioRaw=scaling(Settings.AudioRaw,PrevX,Settings.XRes)
end
function FontTransform()
    -- Convert percent into a signed scaling factor
    local deviation = (Settings.FontModPercent - 0.5) * 2 -- Ranges from -1 to 1
    local FontChange = math.floor(scaling(deviation * 10, 1920, Settings.XRes))

    -- Ensure FontChange has the correct flipping behavior
    if Settings.FontModPercent < 0.5 then
        FontChange = -math.abs(FontChange) -- Force negative change
    else
        FontChange = math.abs(FontChange)  -- Force positive change
    end
    return FontChange
end
function CheckForUpdates(CurrentVersion)
    local HttpsStatus
    local HttpsText
    HttpsStatus, HttpsText = https.request("https://github.com/TimeyDingo/Project-Kalimba")
    local version = HttpsText:match("Current Version:%s*([%d%.]+)")
    if version~=CurrentVersion then
        PopupCall=true
        PopupAction="love.system.openURL('https://github.com/TimeyDingo/Project-Kalimba/releases');PopupCall=false"
        PopUpMessage="New update for Project Kalimba detected, update?"
    end
end