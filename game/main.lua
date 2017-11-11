--Initialize variables
local mainMenu = true

local doA = false
local doB = false
local doX = false
local doY = false

local doUp= false
local doDown = false
local doLeft = false
local doRight = false

local doCPUp = false
local doCPDown = false
local doCPLeft = false
local doCPRight = false

local doCSUp = false
local doCSDown = false
local doCSLeft = false
local doCSRight = false

local doL = false
local doR = false

local doLZ = false
local doRZ = false

local doStart = false
local doSelect = false

--Load Images
local title = love.graphics.newImage('common/image/3DSTestTitle.png')
local topController = love.graphics.newImage('common/image/3DSTestControllerTop.png')
local botController = love.graphics.newImage('common/image/3DSTestControllerBot.png')

local ABXY = love.graphics.newImage('common/image/ABXY.png')

local Up = love.graphics.newImage('common/image/dpUp.png')
local Down = love.graphics.newImage('common/image/dpDown.png')
local Left = love.graphics.newImage('common/image/dpLeft.png')
local Right = love.graphics.newImage('common/image/dpRight.png')

local CPUp = love.graphics.newImage('common/image/cpUp.png')
local CPDown = love.graphics.newImage('common/image/cpDown.png')
local CPLeft = love.graphics.newImage('common/image/cpLeft.png')
local CPRight = love.graphics.newImage('common/image/cpRight.png')
local CPUpLeft = love.graphics.newImage('common/image/cpUpLeft.png')
local CPUpRight = love.graphics.newImage('common/image/cpUpRight.png')
local CPDownLeft = love.graphics.newImage('common/image/cpDownLeft.png')
local CPDownRight = love.graphics.newImage('common/image/cpDownRight.png')

local CSUp = love.graphics.newImage('common/image/csUp.png')
local CSDown = love.graphics.newImage('common/image/csDown.png')
local CSLeft = love.graphics.newImage('common/image/csLeft.png')
local CSRight = love.graphics.newImage('common/image/csRight.png')
local CSUpLeft = love.graphics.newImage('common/image/csUpLeft.png')
local CSUpRight = love.graphics.newImage('common/image/csUpRight.png')
local CSDownLeft = love.graphics.newImage('common/image/csDownLeft.png')
local CSDownRight = love.graphics.newImage('common/image/csDownRight.png')

local L = love.graphics.newImage('common/image/L.png')
local R = love.graphics.newImage('common/image/R.png')

local LZRZ = love.graphics.newImage('common/image/LZRZ.png')

local StartSelect = love.graphics.newImage('common/image/StartSelect.png')

--Load Sounds
local sA = love.audio.newSource("common/sound/A.ogg")
local sB = love.audio.newSource("common/sound/B.ogg")
local sX = love.audio.newSource("common/sound/X.ogg")
local sY = love.audio.newSource("common/sound/Y.ogg")

local sUp = love.audio.newSource("common/sound/Up.ogg")
local sDown = love.audio.newSource("common/sound/Down.ogg")
local sLeft = love.audio.newSource("common/sound/Left.ogg")
local sRight = love.audio.newSource("common/sound/Right.ogg")

local sCP = love.audio.newSource("common/sound/CP.ogg")

local sCS = love.audio.newSource("common/sound/CS.ogg")

local sL = love.audio.newSource("common/sound/L.ogg")
local sR = love.audio.newSource("common/sound/R.ogg")

local sLZ = love.audio.newSource("common/sound/LZ.ogg")
local sRZ = love.audio.newSource("common/sound/RZ.ogg")

local sStart = love.audio.newSource("common/sound/Start.ogg")
local sSelect = love.audio.newSource("common/sound/Select.ogg")

--=================================================================================--
--===                                  Main Program                             ===--
--=================================================================================--

function love.draw()

	if (doA and doB) then
		love.quit()
	end

	love.graphics.setScreen('top')
	if (mainMenu) then
		love.graphics.draw(title, 72, 8)
	else
		love.graphics.draw(topController, 72, 8)
		love.graphics.setScreen('bottom')
		love.graphics.draw(botController, 32, 8)
		
		--Display the pressed buttons when true
		if doA then
			love.graphics.draw(ABXY, 254, 101)
		end
		if doB then
			love.graphics.draw(ABXY, 242, 113)
		end
		if doX then
			love.graphics.draw(ABXY, 242, 89)
		end
		if doY then
			love.graphics.draw(ABXY, 230, 101)
		end
		if doUp then
			love.graphics.draw(Up, 64, 115)
		end
		if doDown then
			love.graphics.draw(Down, 64, 136)
		end
		if doLeft then
			love.graphics.draw(Left, 55, 124)
		end
		if doRight then
			love.graphics.draw(Right, 76, 124)
		end
		if doCPUp then
			if doCPLeft then
				love.graphics.draw(CPUpLeft, 61, 85)
			elseif doCPRight then
				love.graphics.draw(CPUpRight, 61, 85)
			else
				love.graphics.draw(CPUp, 61, 85)
			end
		end
		if doCPDown then
			if doCPLeft then
				love.graphics.draw(CPDownLeft, 61, 85)
			elseif doCPRight then
				love.graphics.draw(CPDownRight, 61, 85)
			else
				love.graphics.draw(CPDown, 61, 85)
			end
		end
		if (doCPLeft and doCPUp == false and doCPDown == false) then
			love.graphics.draw(CPLeft, 61, 85)
		end
		if (doCPRight and doCPUp == false and doCPDown == false) then
			love.graphics.draw(CPRight, 61, 85)
		end
		if doCSUp then
			if doCSLeft then
				love.graphics.draw(CSUpLeft, 230, 77)
			elseif doCSRight then
				love.graphics.draw(CSUpRight, 230, 77)
			else
				love.graphics.draw(CSUp, 230, 77)
			end
		end
		if doCSDown then
			if doCSLeft then
				love.graphics.draw(CSDownLeft, 230, 77)
			elseif doCSRight then
				love.graphics.draw(CSDownRight, 230, 77)
			else
				love.graphics.draw(CSDown, 230, 77)
			end
		end
		if (doCSLeft and doCSUp == false and doCSDown == false) then
			love.graphics.draw(CSLeft, 230, 77)
		end
		if (doCSRight and doCSUp == false and doCSDown == false) then
			love.graphics.draw(CSRight, 230, 77)
		end
		if doL then
			love.graphics.draw(L, 51, 54)
		end
		if doR then
			love.graphics.draw(R, 253, 54)
		end
		if doLZ then
			love.graphics.draw(LZRZ, 77, 53)
		end
		if doRZ then
			love.graphics.draw(LZRZ, 233, 53)
		end
		if doStart then
			love.graphics.draw(StartSelect, 232, 140)
		end
		if doSelect then
			love.graphics.draw(StartSelect, 232, 154)
		end
	end
end

function love.keypressed(key)
	if key == 'a' then
		if (mainMenu) then
			mainMenu = false
		else
			doA = true
			sA:play()
		end
	end
	if key == 'b' then
		doB = true
		sB:play()
	end
	if key == 'x' then
		doX = true
		sX:play()
	end
	if key == 'y' then
		doY = true
		sY:play()
	end
	if key == 'up' then
		doUp = true
		sUp:play()
	end
	if key == 'down' then
		doDown = true
		sDown:play()
	end
	if key == 'left' then
		doLeft = true
		sLeft:play()
	end
	if key == 'right' then
		doRight = true
		sRight:play()
	end
	if key == 'cpadup' then
		doCPUp = true
		sCP:play()
	end
	if key == 'cpaddown' then
		doCPDown = true
		sCP:play()
	end
	if key == 'cpadleft' then
		doCPLeft = true
		sCP:play()
	end
	if key == 'cpadright' then
		doCPRight = true
		sCP:play()
	end
	if key == 'cstickup' then
		doCSUp = true
		sCS:play()
	end
	if key == 'cstickdown' then
		doCSDown = true
		sCS:play()
	end
	if key == 'cstickleft' then
		doCSLeft = true
		sCS:play()
	end
	if key == 'cstickright' then
		doCSRight = true
		sCS:play()
	end
	if key == 'lbutton' then
		doL = true
		sL:play()
	end
	if key == 'rbutton' then
		doR = true
		sR:play()
	end
	if key == 'lzbutton' then
		doLZ = true
		sLZ:play()
	end
	if key == 'rzbutton' then
		doRZ = true
		sRZ:play()
	end
	if key == 'start' then
		doStart = true
		sStart:play()
	end
	if key == 'select' then
		doSelect = true
		sSelect:play()
	end
end

function love.keyreleased(key)
	if key == 'a' then
		doA = false
	end
	if key == 'b' then
		doB = false
	end
	if key == 'x' then
		doX = false
	end
	if key == 'y' then
		doY = false
	end
	if key == 'up' then
		doUp = false
	end
	if key == 'down' then
		doDown = false
	end
	if key == 'left' then
		doLeft = false
	end
	if key == 'right' then
		doRight = false
	end
	if key == 'cpadup' then
		doCPUp = false
		if (doCPLeft or doCPRight) then
			sCP:play()
		end
	end
	if key == 'cpaddown' then
		doCPDown = false
		if (doCPLeft or doCPRight) then
			sCP:play()
		end
	end
	if key == 'cpadleft' then
		doCPLeft = false
		if (doCPUp or doCPDown) then
			sCP:play()
		end
	end
	if key == 'cpadright' then
		doCPRight = false
		if (doCPUp or doCPDown) then
			sCP:play()
		end
	end
	if key == 'cstickup' then
		doCSUp = false
		if (doCSLeft or doCSRight) then
			sCS:play()
		end
	end
	if key == 'cstickdown' then
		doCSDown = false
		if (doCSLeft or doCSRight) then
			sCS:play()
		end
	end
	if key == 'cstickleft' then
		doCSLeft = false
		if (doCSUp or doCSDown) then
			sCS:play()
		end
	end
	if key == 'cstickright' then
		doCSRight = false
		if (doCSUp or doCSDown) then
			sCS:play()
		end
	end
	if key == 'lbutton' then
		doL = false
	end
	if key == 'rbutton' then
		doR = false
	end
	if key == 'lzbutton' then
		doLZ = false
	end
	if key == 'rzbutton' then
		doRZ = false
	end
	if key == 'start' then
		doStart = false
	end
	if key == 'select' then
		doSelect = false
	end
end