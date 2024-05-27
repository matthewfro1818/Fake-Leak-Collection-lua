--created with Super_Hugo's Stage Editor v1.6.3

function onCreate()

	makeAnimatedLuaSprite('obj1', 'Backgrounds/Crisped/crispyBG', -543, -143)
	setObjectOrder('obj1', 1)
	addAnimationByPrefix('obj1', 'anim', 'Spin0', 24, true)
	playAnim('obj1', 'anim', true)
	addLuaSprite('obj1', true)
	
	makeLuaSprite('obj2', 'Backgrounds/Crisped/darkSky', -601, -746)
	setObjectOrder('obj2', 2)
	scaleObject('obj2', 2.1, 2.1)
	setProperty('obj2.alpha', 0.7)
	addLuaSprite('obj2', true)
	
	makeLuaSprite('obj3', 'Backgrounds/Crisped/chains', -2476, -151)
	setObjectOrder('obj3', 4)
	scaleObject('obj3', 2.2, 2.2)
	setProperty('obj3.alpha', 0.8)
	addLuaSprite('obj3', true)
	
	makeLuaSprite('obj4', 'Backgrounds/Crisped/chains', -626, -146)
	setObjectOrder('obj4', 4)
	scaleObject('obj4', 2.2, 2.2)
	setProperty('obj4.alpha', 0.8)
	addLuaSprite('obj4', true)
	
	makeLuaSprite('obj5', 'Backgrounds/Crisped/platform', 740, 711)
	setObjectOrder('obj5', 4)
	scaleObject('obj5', 1.2, 1.2)
	addLuaSprite('obj5', true)
	
end