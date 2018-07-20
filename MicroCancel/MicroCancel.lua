SLASH_MICROCANCEL1 = '/cancel'
SLASH_MICROCANCEL2 = '/microcancel' -- to handle slash collisions

SlashCmdList["MICROCANCEL"] = function(msg, editbox)
	for i=1, 40 do
		name = UnitAura("player", i)
		if not name then return end
		if string.lower(name) == string.lower(msg) then 
			CancelUnitBuff("player", i)
			return
		end
	end
end
