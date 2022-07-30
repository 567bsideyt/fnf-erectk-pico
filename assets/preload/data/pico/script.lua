local xx = 700
local yy = 500
local xx2 = 1000
local yy2 = 500
local ofs = 40
local followchars = true
local wtf = false

function onEvent(name, value1, value2)
	if name == "BG Freaks Expression" then --I MIXED EM UP FUCK
		xd = tonumber(value1)
		if xd == 1 then
			wtf = false
		elseif xd == 0 then
			wtf = true
		end
	end
end

function onUpdate(elapsed)
	--WHEN WILL IT END
	if mustHitSection == false then
		if followchars == true then
			if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
				triggerEvent('Camera Follow Pos',xx-ofs,yy)
			end
			if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
				triggerEvent('Camera Follow Pos',xx+ofs,yy)
			end
			if getProperty('dad.animation.curAnim.name') == 'singUP' then
				triggerEvent('Camera Follow Pos',xx,yy-ofs)
			end
			if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
				triggerEvent('Camera Follow Pos',xx,yy+ofs)
			end
		end
		if getProperty('dad.animation.curAnim.name') == 'idle' then
			triggerEvent('Camera Follow Pos',xx,yy)
		end
		if wtf == true then
			setProperty('defaultCamZoom',1.30)
			yy = 530
			yy2 = 530
		else
			setProperty('defaultCamZoom',0.975)
			yy = 500
			yy2 = 500
		end
		else
		if followchars == true then
			if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
				triggerEvent('Camera Follow Pos',xx2-ofs,yy2)
			end
			if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
				triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
			end
			if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
				triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
			end
			if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
				triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
			end
		end
		if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
			triggerEvent('Camera Follow Pos',xx2,yy2)
		end
		if wtf == true then
			setProperty('defaultCamZoom',1.30)
			yy = 530
			yy2 = 530
		else
			setProperty('defaultCamZoom',0.975)
			yy = 500
			yy2 = 500
		end
	end	
end