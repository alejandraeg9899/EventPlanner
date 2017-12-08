local composer = require( "composer" )
local phys=require("physics")
phys.start()

local scene = composer.newScene()

function scene:create( event )
local sceneGroup = self.view
	--composer.removeScene("")
	local imagen=display.newImage("color.png",ancho/2,largo/2)
	imagen:scale(ancho,largo)
	sceneGroup:insert(imagen)
	local mytext=display.newText("¡Buen Dia!",ancho-50,0,native.systemFontBold)
	sceneGroup:insert(mytext)
	local mytex=display.newText("Flores",ancho/2,35,native.systemFontBold,30)
	sceneGroup:insert(mytex)
	local imag=display.newImage("mapa.png",ancho/2,180)
	imag:scale(0.7,0.5)
	sceneGroup:insert(imag)
	local im=display.newImage("ARANZA.png",ancho/2,344)
	im:scale(0.67,0.7)
	sceneGroup:insert(im)
	local i=display.newImage("FLORERI.png",ancho/2,454)
	i:scale(0.67,0.52)
	sceneGroup:insert(i)
	local function cambiar(event)
		if (event.phase=="began") then
			composer.gotoScene("scenes.scene3",composerOptions)
		end
	end
	im:addEventListener("touch",cambiar )
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
