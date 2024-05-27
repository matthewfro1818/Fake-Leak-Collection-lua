function onCountdownStarted()
	if dadName == 'Unfair Bambi' or dadName == 'Crisped Dave' or dadName == 'Phase 2 Crisped Dave' or dadName == 'Glitchscape Bambi' then
		if inGameOver == false then
			for i=0,4,1 do
				setPropertyFromGroup('opponentStrums', i, 'texture', 'polynote')
			end
			for i = 0, getProperty('unspawnNotes.length')-1 do
				if not getPropertyFromGroup('unspawnNotes', i, 'mustPress') then
					setPropertyFromGroup('unspawnNotes', i, 'texture', 'polynote'); --Change texture
				end
			end
	    end
	end
end
