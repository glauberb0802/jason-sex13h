function onCreatePost()
	makeLuaSprite("sky", "awesomesauce/sky", -1250, -480)
	setScrollFactor("sky", 0.2, 0.2)
	addLuaSprite("sky", false)
	doTweenX("clouds_moving", "sky", -430, 120, "linear")
	
	makeLuaSprite("forest", "awesomesauce/forest", 700, 650)
	setScrollFactor("forest", 0.75, 0.75)
	addLuaSprite("forest", false)
	
	makeLuaSprite("path", "awesomesauce/path", -650, 900)
	setScrollFactor("path", 0.95, 0.95)
	addLuaSprite("path", false)
	
	makeLuaSprite("school", "awesomesauce/school", -800, 60)
	setScrollFactor("school", 0.9, 0.9)
	addLuaSprite("school", false)
	
	makeLuaSprite("trees", "awesomesauce/trees", 800, 160)
	setScrollFactor("trees", 0.9, 0.9)
	addLuaSprite("trees", false)
	
	if not lowQuality then
		makeAnimatedLuaSprite("crowd", "awesomesauce/crowd", -450, 600)
		addAnimationByPrefix("crowd", "bop", "bop", 24, false)
		setScrollFactor("crowd", 0.95, 0.95)
		addLuaSprite("crowd", false)
		
		makeAnimatedLuaSprite("petals", "awesomesauce/petals", 300, 400)
		addAnimationByPrefix("petals", "default", "default", 24, true)
		scaleObject("petals", 1.5, 1.5)
		setScrollFactor("petals", 0.95, 0.95)
		addLuaSprite("petals", false)
		playAnim("petals", "default", true)
		
		makeLuaSprite("overlay", "awesomesauce/overlay", -800, 0)
		setBlendMode("overlay", "add")
		addLuaSprite("overlay", true)
	end
end

if not lowQuality then
	function onBeatHit()
		if curBeat % 2 == 0 then
			playAnim("crowd", "bop", true)
		end
	end
end

-- crash prevention
function onUpdate() end
function onUpdatePost() end
