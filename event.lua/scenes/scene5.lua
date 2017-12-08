local composer = require( "composer" )
local phys=require("physics")
phys.start()

local scene = composer.newScene()

function scene:create( event )
local sceneGroup = self.view
	--composer.removeScene("")
	local imagen=display.newImage("color2.png",ancho/2,largo/2)
	imagen:scale(ancho,largo)
	sceneGroup:insert(imagen)
	local mes=display.newText("Diciembre 2017" ,ancho/2,20,native.systemFontBold,30)
	sceneGroup:insert(mes)
	local m=display.newText("Menú" ,ancho/6,largo,native.systemFontBold,20)
	m:setFillColor(255,255,255)
	sceneGroup:insert(m)
	local s=display.newText("Inicio" ,ancho-100,largo,native.systemFontBold,20)
	s:setFillColor(255,255,255)
	sceneGroup:insert(s)
	local imag=display.newImage("calendarioAgendado.png",ancho/2,250)
	imag:scale(0.5,0.5)
	sceneGroup:insert(imag)

	local function cambiar(event)
		if (event.phase=="began") then
			composer.gotoScene("scenes.scene",composerOptions)---deberia ser ir a calendario
		end
	end
	m:addEventListener("touch",cambiar )

	local function salir(event)
		if (event.phase=="began") then
			composer.gotoScene("scenes.menu",composerOptions)---deberia ser ir a calendario
		end
	end
	s:addEventListener("touch",salir)
end

function scene:show( event )
end

function scene:hide( event )
end


function scene:destroy( event )
    local sceneGroup = self.view
end

scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )

return scene
