require "math"--default lua math
require "TextFuncs"--adds custom functions
require "IOFuncs"
require "CoreChanges"
require "Loading"
require "95Styling"
require "backdrops"
require "Music"
utf8 = require("utf8")
https = require("https")
function love.load()
    LoadSettings()
    LoadFonts()
    LoadMouseClickDebounce()
    LoadPopup()
    StateMachine="Main Menu"
    BackspaceTimer=0
    NoteTimer=0
    NoteInterval=3
    DisplayedNote=0
    MainMenuScroll=0
    MouseHistory = {}
    MouseHistory.maxEntries = 10
    love.keyboard.setTextInput(true)
    CheckForUpdates("0.0.01")
end
function love.update(dt)
    dt = love.timer.getDelta()
    UpdateDebounceTimers()
    DebounceTimer=DebounceTimer+dt
    NoteTimer=NoteTimer+dt
    if love.keyboard.isDown("lshift") and love.keyboard.isDown("escape") then --? allows game to be closed quickly for debugging
        love.event.quit()
    end
    if love.keyboard.isDown("escape") then
        PopupCall=true
        PopupAction="love.event.quit()"
        PopUpMessage="Close Software?"
    end
    StateMachine=tostring(StateMachine)
    function love.wheelmoved(x, y)
        YScroll=y
    end
end
function love.draw()
    H=love.graphics.getHeight()
    W=love.graphics.getWidth()
    MouseX = love.mouse.getX()
    MouseY = love.mouse.getY()
    MouseDX, MouseDY=MouseDelta()
    if PopupCall==false then
        if StateMachine=="Main Menu" then
            --N5Window(244, 79, 1431, 922, true, "Project Copernicus", true,{{"StateMachine='Settings Menu'","~"},{"PopupCall=true; PopupAction='love.event.quit()';PopUpMessage='Close Software?'","X"}})
            N5MainMenu()
            N5Button(1542,93,55,55,true,"StateMachine='Settings Menu'",true,SmallHeaderBold,"~")
            N5Button(1604,93,55,55,true,"PopupCall=true; PopupAction='love.event.quit()';PopUpMessage='Close Software?'",true,SmallHeaderBold,"X")
            local RandomNote = love.math.random(-5, 11)
            if NoteTimer>Settings.NoteSpeedPercent*5 then
                NoteTimer=0
                DisplayedNote=RandomNote
            end
            print(Settings.NoteSpeedPercent*5)
            --[[
                E6 = -5
                D6 = -4
                C6 = -3
                B5 = -2
                A5 = -1 
                G5 = 0
                F5 = 1
                E5 = 2
                D5 = 3
                C5 = 4
                B4 = 5
                A4 = 6
                G4 = 7
                F4 = 8
                E4 = 9
                D4 = 10
                C4 = 11
            ]]
            NoteConversionTable={"E6","D6","C6","B5","A5","G5","F5","E5","D5","C5","B4","A4","G4","F4","E4","D4","C4"}
            MeasureDisplay(0, 0, scaling(500,1440,Settings.XRes), scaling(50,810,Settings.YRes))
            DrawQuarterNote(0, 0, scaling(500,1440,Settings.XRes), scaling(50,810,Settings.YRes), DisplayedNote, 0.5)
            CenterText(scaling(-300,1440,Settings.XRes),0,NoteConversionTable[DisplayedNote+6],MediumHeaderBold)
            if Settings.TimerBox then
                TimerDisplay(1300,400,275,true)
            end
        end

        
        if StateMachine=="Settings Menu" then
            N5SettingMenu()
            N5Button(754,880,402,110, true, 'ConfirmSettings()', true, BodyFontBold, "Save Settings")
            --resolution
            N5BoxWithTitle(1249,178,411,55,true,"Current Resolution",Settings.XRes.. " x " ..Settings.YRes)
            local RSBX,RSBY,RSBW,RSBH=N5BoxWithTitle(1249,261,411,573,true,"Select A Resolution")
            local Padding=scaling(10,1920,Settings.XRes)
            local YSpacing=scaling(44.5,1080,Settings.YRes)
            local BoxHeight=scaling(24,634,Settings.YRes)
            N5Button(RSBX+Padding,RSBY+Padding,RSBW-Padding*2,BoxHeight,false,"ApplySettings(854,480)",true,BodyFont,"854 x 480")
            N5Button(RSBX+Padding,RSBY+Padding+YSpacing*1,RSBW-Padding*2,BoxHeight,false,"ApplySettings(1024,576)",true,BodyFont,"1024 x 576")
            N5Button(RSBX+Padding,RSBY+Padding+YSpacing*2,RSBW-Padding*2,BoxHeight, false, "ApplySettings(1128,634)", true, BodyFont, "1128 x 634")
            N5Button(RSBX+Padding,RSBY+Padding+YSpacing*3,RSBW-Padding*2,BoxHeight, false, "ApplySettings(1280,720)", true, BodyFont, "1280 x 720")
            N5Button(RSBX+Padding,RSBY+Padding+YSpacing*4,RSBW-Padding*2,BoxHeight, false, "ApplySettings(1366,768)", true, BodyFont, "1366 x 768")
            N5Button(RSBX+Padding,RSBY+Padding+YSpacing*5,RSBW-Padding*2,BoxHeight, false, "ApplySettings(1440,810)", true, BodyFont, "1440 x 810")
            N5Button(RSBX+Padding,RSBY+Padding+YSpacing*6,RSBW-Padding*2,BoxHeight, false, "ApplySettings(1600,900)", true, BodyFont, "1600 x 900")
            N5Button(RSBX+Padding,RSBY+Padding+YSpacing*7,RSBW-Padding*2,BoxHeight, false, "ApplySettings(1760,990)", true, BodyFont, "1760 x 990")
            N5Button(RSBX+Padding,RSBY+Padding+YSpacing*8,RSBW-Padding*2,BoxHeight, false, "ApplySettings(1920,1080)", true, BodyFont, "1920 x 1080")
            N5Button(RSBX+Padding,RSBY+Padding+YSpacing*9,RSBW-Padding*2,BoxHeight, false, "ApplySettings(2560,1440)", true, BodyFont, "2560 x 1440")
            N5Button(RSBX+Padding,RSBY+Padding+YSpacing*10,RSBW-Padding*2,BoxHeight, false, "ApplySettings(2732,1536)", true, BodyFont, "2732 x 1536")
            N5Button(RSBX+Padding,RSBY+Padding+YSpacing*11,RSBW-Padding*2,BoxHeight, false, "ApplySettings(3840,2160)", true, BodyFont, "3840 x 2160")
            --
            --font selector
            N5BoxWithTitle(261,178,411,55,true,"Current Font",Settings.FontSelected)
            local FSBX,FSBY,FSBW,FSBH=N5BoxWithTitle(261,261,411,573,true,"Select A Font")
            N5Button(FSBX+Padding,FSBY+Padding,FSBW-Padding*2,BoxHeight,false,"Settings.FontSelected='Exo2'",true,SExo24,"Exo2")
            N5Button(FSBX+Padding,FSBY+Padding+YSpacing*1,FSBW-Padding*2,BoxHeight,false,"Settings.FontSelected='AtkinsonHyperlegible'",true,SAHL24,"AtkinsonHyperlegible")
            N5Button(FSBX+Padding,FSBY+Padding+YSpacing*2,FSBW-Padding*2,BoxHeight, false, "Settings.FontSelected='IBMPlex'", true, SIBM24, "IBMPlex")
            N5Button(FSBX+Padding,FSBY+Padding+YSpacing*3,FSBW-Padding*2,BoxHeight, false, "Settings.FontSelected='Stylized'", true, SExo24, "Stylized (Exo2+IBM)")
            N5Button(FSBX+Padding,FSBY+Padding+YSpacing*4,FSBW-Padding*2,BoxHeight, false, "Settings.FontSelected='OpenDyslexic'", true, SOD24, "Open Dyslexic")
            --
            --Note Interval
            local AVTX,AVTY,AVTW,AVTH=N5BoxWithTitle(744,308,411,79,true,"Note Interval","",true)
            Settings.NoteSpeedRaw,Settings.NoteSpeedPercent=N5Slider(AVTX,AVTY,AVTW,AVTH, false, Settings.NoteSpeedRaw,Settings.NoteSpeedPercent)
            local Selected = isMouseOverBox(AVTX, AVTY, AVTW, AVTH)
            print(Settings.NoteSpeedPercent*5)
            love.graphics.setColor(0,0,0)
            CenterText(0,scaling(-150,810,Settings.YRes),string.format("%.1f", Settings.NoteSpeedPercent * 5),MediumHeaderBold)
            --TimerBox mode
            local DMTX,DMTY,DMTW,DMTH=N5BoxWithTitle(744,436,411,79,true,"Timer Box?","",true)
            Settings.TimerBox=N5TickBox(DMTX,DMTY,DMTW,DMTH, false, Settings.TimerBox)
            --antiflicker
            local RFTX,RFTY,RFTW,RFTH=N5BoxWithTitle(744,565,411,79,true,"Reduced Flicker?","",true)
            Settings.ReducedFlicker=N5TickBox(RFTX,RFTY,RFTW,RFTH, false, Settings.ReducedFlicker)
            --
            --Font size
            local FSTX,FSTY,FSTW,FSTH=N5BoxWithTitle(744,693,411,79,true,"Font Size Modifier","",true)
            Settings.FontModRaw,Settings.FontModPercent=N5Slider(FSTX,FSTY,FSTW,FSTH, false, Settings.FontModRaw,Settings.FontModPercent)
            SExo24=love.graphics.newFont("Fonts/Exo2.ttf", scaling(24,1080,Settings.YRes)+FontTransform())
            SIBM24=love.graphics.newFont("Fonts/IBMPlexMono-Regular.ttf", scaling(24,1080,Settings.YRes)+FontTransform())
            SAHL24=love.graphics.newFont("Fonts/AtkinsonHyperlegible-Regular.ttf", scaling(24,1080,Settings.YRes)+FontTransform())
            SOD24=love.graphics.newFont("Fonts/OpenDyslexic-Regular.otf", scaling(24,1080,Settings.YRes,true)+FontTransform())
            --
            N5Button(1542,93,55,55,true,"StateMachine='Main Menu';love.load()",true,SmallHeaderBold,"<-")
            N5Button(1604,93,55,55,true,"PopupCall=true; PopupAction='love.event.quit()';PopUpMessage='Close Software?'",true,SmallHeaderBold,"X")
        end
    end
    --love.graphics.print(MouseX.."x"..MouseY,scaling(200,1920,Settings.XRes),scaling(50,1080,Settings.YRes))--? Debug for mouse position
    --love.graphics.print("FPS:"..love.timer.getFPS(),scaling(200,1920,Settings.XRes),scaling(100,1080,Settings.YRes))--? Debug for mouse position
    if PopupCall==true then
        ConfirmActionPopup(PopUpMessage,BodyFontBold,true,PopupAction)
    end
end