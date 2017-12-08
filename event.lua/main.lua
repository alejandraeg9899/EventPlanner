ancho = display.contentWidth
largo = display.contentHeight

local composer = require "composer"

local composerOptions = {     
    effect = "fade",     
    time = 500,     
}

composer.gotoScene("scenes.menu",composerOptions)