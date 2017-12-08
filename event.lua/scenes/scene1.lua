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
	local mytex=display.newText("Boda",ancho/2,35,native.systemFontBold,30)
	sceneGroup:insert(mytex)
	local imag=display.newImage("flores.jpg",ancho/2,150)
	imag:scale(0.2,0.1)
	sceneGroup:insert(imag)
	local im=display.newImage("comida.png",ancho/2,188)
	im:scale(0.35,0.13)
	sceneGroup:insert(im)
	local ima=display.newImage("mantel.jpg",ancho/2,274)
	ima:scale(0.55,0.22)
	sceneGroup:insert(ima)
	local im=display.newImage("vestido.png",ancho/2-25,356)
	im:scale(1,0.55)
	sceneGroup:insert(im)
	local im=display.newImage("musica.jpg",ancho/2,437)
	im:scale(1.2,0.5)
	sceneGroup:insert(im)
	local i=display.newImage("MUEBLES.jpg",ancho/2,505)
	i:scale(1.5,0.3)
	sceneGroup:insert(i)
	local myt=display.newText("Flores",60,110,native.systemFontBold,22)
	myt:setFillColor(0,0,0)
	sceneGroup:insert(myt)
	local my=display.newText("Buffet",60,280,native.systemFontBold,22)
	my:setFillColor(255,255,255)
	sceneGroup:insert(my)
	local m=display.newText("Manteleria",60,195,native.systemFontBold,22)
	m:setFillColor(0,0,0)
	sceneGroup:insert(m)
	local mi=display.newText("Vestido de",60,355,native.systemFontBold,22)
	mi:setFillColor(0,0,0)
	sceneGroup:insert(mi)
	local mu=display.newText("Boda",60,375,native.systemFontBold,22)
	mu:setFillColor(0,0,0)
	sceneGroup:insert(mu)
	local mp=display.newText("Música",60,438,native.systemFontBold,22)
	mp:setFillColor(255,255,255)
	sceneGroup:insert(mp)
	local function cambiar(event)
		if (event.phase=="began") then
			composer.gotoScene("scenes.scene2",composerOptions)
		end
	end
	imag:addEventListener("touch",cambiar )
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
