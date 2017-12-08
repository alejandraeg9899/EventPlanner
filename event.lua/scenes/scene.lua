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
	local mytext=display.newText("¡Buen Dia!",ancho-50,-30,native.systemFontBold)
	sceneGroup:insert(mytext)
	local mytex=display.newText("Tipo de Evento",ancho/2,-5,native.systemFontBold,30)
	sceneGroup:insert(mytex)
	local imag=display.newImage("boda.png",ancho/2,80)
	imag:scale(0.5,0.3)
	sceneGroup:insert(imag)
	local im=display.newImage("despedidas.png",ancho/2,170)
	im:scale(0.7,0.5)
	sceneGroup:insert(im)
	local ima=display.newImage("xv.png",ancho/2,250)
	ima:scale(0.32,0.06)
	sceneGroup:insert(ima)
	local im=display.newImage("globos.png",ancho/2,320)
	im:scale(1.5,0.9)
	sceneGroup:insert(im)
	local im=display.newImage("bautizo.png",ancho/2,400)
	im:scale(0.35,0.2)
	sceneGroup:insert(im)
	local i=display.newImage("baby.png",ancho/2,480)
	i:scale(0.5,0.2)
	sceneGroup:insert(i)

	local myt=display.newText("Boda",ancho-50,100,native.systemFontBold,22)
	myt:setFillColor(51, 102, 153)
	sceneGroup:insert(myt)
	local my=display.newText("XV Años",ancho-50,260,native.systemFontBold,22)
	my:setFillColor(255,255,255)
	sceneGroup:insert(my)
	local m=display.newText("Despedida",ancho/2,155,native.systemFontBold,22)
	m:setFillColor(0,0,0)
	sceneGroup:insert(m)
	local mo=display.newText("de Solteros",ancho/2,175,native.systemFontBold,22)
	mo:setFillColor(0,0,0)
	sceneGroup:insert(mo)
	local mi=display.newText("Fiesta",ancho/2,320,native.systemFontBold,22)
	mi:setFillColor(0,0,0)
	sceneGroup:insert(mi)
	local mu=display.newText("Infantil",ancho/2,340,native.systemFontBold,22)
	mu:setFillColor(0,0,0)
	sceneGroup:insert(mu)
	local mp=display.newText("Bautizo",ancho-50,420,native.systemFontBold,22)
	mp:setFillColor(255,255,255)
	sceneGroup:insert(mp)
	local mp=display.newText("Baby shower",ancho/2,495,native.systemFontBold,22)
	mp:setFillColor(255,255,255)
	sceneGroup:insert(mp)
	local function cambiar(event)
		if (event.phase=="began") then
			composer.gotoScene("scenes.scene1",composerOptions)
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
