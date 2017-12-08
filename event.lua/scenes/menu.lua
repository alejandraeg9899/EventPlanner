local composer = require( "composer" )

local scene = composer.newScene()

function scene:create( event )
	local sceneGroup = self.view
	--composer.removeScene("")
	local imagen=display.newImage("FONDO.png",ancho/2,largo/2)
	imagen:scale(1,1)
	sceneGroup:insert(imagen)
	local image=display.newImage("color.png",ancho/2,largo)
	image:scale(ancho,0.8)
	sceneGroup:insert(image)
	local imag=display.newImage("color.png",ancho/2,0)
	imag:scale(ancho,0.8)
	sceneGroup:insert(imag)
	local im=display.newImage("boton.png",70,largo-65)
	im:scale(0.2,0.15)
	sceneGroup:insert(im)
	local mytext=display.newText("LET´S PLANNER",ancho/2,largo,native.systemFontBold,20)
	sceneGroup:insert(mytext)
	local mytex=display.newText("EVENT PLANNER",ancho/2,0,native.systemFontBold,20)
	sceneGroup:insert(mytex)
	local function cambiar(event)
		if (event.phase=="began") then
			composer.gotoScene("scenes.scene",composerOptions)
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
