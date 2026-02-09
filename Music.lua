-- Draw a centered staff measure
-- X, Y are offsets from true screen center (just like CenterText)
function MeasureDisplay(X, Y, width, lineSpacing)

    if X==nil or Y==nil or width==nil or lineSpacing==nil then
        print("MeasureDisplay() nil argument")
        return
    end
    love.graphics.setColor(0,0,0)
    local staffHeight = lineSpacing * 4

    -- Same centering math as your text
    local startX = ((W - width) / 2) + X
    local startY = ((H - staffHeight) / 2) + Y

    -- Draw 5 staff lines
    for i = 0, 4 do
        local ly = startY + i * lineSpacing
        love.graphics.line(startX, ly, startX + width, ly)
    end

    -- Left bar line
    love.graphics.line(startX, startY, startX, startY + staffHeight)

    -- Right bar line
    love.graphics.line(startX + width, startY, startX + width, startY + staffHeight)
end
--
function DrawQuarterNote(X, Y, width, lineSpacing, position, beatPos)

    local staffHeight = lineSpacing * 4
    local startX = ((W - width) / 2) + X
    local startY = ((H - staffHeight) / 2) + Y

    local step = lineSpacing / 2
    local posY = startY + (position - 1) * step
    local noteX = startX + (beatPos * width)

    local rx = lineSpacing * 0.6
    local ry = lineSpacing * 0.45

    
    love.graphics.setLineWidth(MediumLine)

    -- Above the staff
    if position < 1 then
        for p = position, 1 do
            if p % 2 ~= 0 then -- line positions only
                local ledgerY = startY + (p - 1) * step
                love.graphics.line(noteX - rx * 1.4, ledgerY, noteX + rx * 1.4, ledgerY)
            end
        end
    end

    -- Below the staff
    if position > 9 then
        for p = 9, position do
            if p % 2 ~= 0 then -- line positions only
                local ledgerY = startY + (p - 1) * step
                love.graphics.line(noteX - rx * 1.4, ledgerY, noteX + rx * 1.4, ledgerY)
            end
        end
    end

    love.graphics.setLineWidth(ThinLine)

    --note head
    love.graphics.ellipse("fill", noteX, posY, rx, ry)

    -- stem
    local stemHeight = lineSpacing * 2.5
    love.graphics.setLineWidth(MediumLine)
    if position <= 5 then
        stemHeight = stemHeight * -1
    end
    love.graphics.line(noteX + rx, posY, noteX + rx, posY - stemHeight)
    love.graphics.setLineWidth(ThinLine)
end
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
function TimerDisplay(BoxX,BoxY,BoxH,Scaling)
    local MaxTime = Settings.NoteSpeedPercent * 5
    local Time = MaxTime - NoteTimer

    if Scaling then
        BoxX = scaling(BoxX,1920,Settings.XRes)
        BoxY = scaling(BoxY,1080,Settings.YRes)
        BoxH = scaling(BoxH,1080,Settings.YRes)
    end

    -- convert time into 0 → 1
    local Percent = math.max(0, math.min(1, Time / MaxTime))

    -- how tall the filled part should be
    local FillHeight = BoxH * Percent

    local TargetColor = {r = 132, g = 195, b = 24} -- green
    local StartColor = {r = 215, g = 54, b = 64} -- red
    local color = SmudgeColor(StartColor, TargetColor, Percent * 1.5)

    love.graphics.setColor(color.r, color.g, color.b)

    -- draw from bottom of the box upward
    love.graphics.rectangle(
        "fill",
        BoxX,
        BoxY + (BoxH - FillHeight), -- start at bottom
        scaling(20,1920,Settings.XRes), -- bar width (pick what looks good)
        FillHeight
    )

    love.graphics.setColor(255,255,255)
end