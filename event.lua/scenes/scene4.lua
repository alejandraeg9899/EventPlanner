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
	local mes=display.newText("Cita o Evento" ,ancho/2,20,native.systemFontBold,30)
	sceneGroup:insert(mes)
	local m=display.newText("Agendar cita o evento" ,ancho/2,largo,native.systemFontBold,20)
	m:setFillColor(255,255,255)
	sceneGroup:insert(m)
	local imag=display.newImage("datosAgendar.png",ancho/2,200)
	imag:scale(0.5,0.5)
	sceneGroup:insert(imag)

	local function cambiar(event)
		if (event.phase=="began") then
			composer.gotoScene("scenes.scene5",composerOptions)---deberia ser ir a calendario
		end
	end
	m:addEventListener("touch",cambiar )
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
