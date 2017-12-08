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
	local mytex=display.newText("Floreria 'Aranzaflor' " ,ancho/2,35,native.systemFontBold,30)
	sceneGroup:insert(mytex)
	local flo=display.newImage("Floreria.png",ancho/2,120)
	flo:scale(0.7,0.7)
	sceneGroup:insert(flo)
	local m=display.newText("AGENDAR" ,ancho/2,largo,native.systemFontBold,20)
	m:setFillColor(255,255,255)
	sceneGroup:insert(m)
	local imag=display.newImage("aza.png",ancho/2,325)
	imag:scale(0.6,0.5)
	sceneGroup:insert(imag)
	local im=display.newImage("stre.png",ancho/2,largo-30)
	im:scale(1,1)
	sceneGroup:insert(im)
	local function cambiar(event)
		if (event.phase=="began") then
			composer.gotoScene("scenes.scene4",composerOptions)---deberia ser ir a calendario
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
