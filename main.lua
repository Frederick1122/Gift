-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here

-- Include libraries and set default settings
local vjoy = require "com.ponywolf.vjoy"
local physics = require "physics" 
local json = require "json"

display.setDefault( "magTextureFilter", "nearest" )
physics.start()

-- Initialize variables
--Base
local lives = 3
local score = 0
local died = false

local displaySizeX = display.contentWidth
local displaySizeY = display.contentHeight 

local displayCenterX = display.contentCenterX
local displayCenterY = display.contentCenterY

--Characters 
local enemies = {}
local player = display.newImageRect("Characters/Player.png", 30, 30)
player.x = displayCenterX
player.y = displayCenterY

--local box = display.newRect(displayCenterX, displayCenterY, displaySizeX - 20, displaySizeY - 20)

--UI
local scoreText = display.newText("Score: "..tostring(score), 40 , 30, native.systemFont, 20 )
local livesText = display.newText("Lives: "..tostring(lives), 40 , 60, native.systemFont, 20 )

local stick = vjoy.newStick(150, 25, 50)
stick.x = displaySizeX - 70
stick.y = displaySizeY - 70

-----


-- Initialize functions
  
local function axis(event)
    local normalizedValue = json.prettify(event)
    print(tostring(normalizedValue))
    
end

-----

Runtime:addEventListener( "axis", axis )


