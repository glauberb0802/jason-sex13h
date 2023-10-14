
--How makeLuaSprite works:
--makeLuaSprite(<SPRITE VARIABLE>, <SPRITE IMAGE FILE NAME>, <X>, <Y>);
--"Sprite Variable" is how you refer to the sprite you just spawned in other methods like "setScrollFactor" and "scaleObject" for example

--so for example, i made the sprites "stagelight_left" and "stagelight_right", i can use "scaleObject('stagelight_left', 1.1, 1.1)"
--to adjust the scale of specifically the one stage light on left instead of both of them

function onCreate()
	makeLuaSprite('whitevoid', 'snowforest/whitevoid', -580, 0);
	scaleObject('whitevoid', 1, 1);
	setScrollFactor('whitevoid', 1, 1);
	
	makeLuaSprite('treesnow', 'snowforest/treesnow', -580, 0);
	scaleObject('treesnow', 1, 1);
	setScrollFactor('treesnow', 1, 1);
	
	makeLuaSprite('snow', 'snowforest/snow', -580, 0);
	scaleObject('snow 2', 1, 1);
	setScrollFactor('snow 2', 1, 1);
	setObjectOrder('snow 2', 6);

	makeLuaSprite('overlaysnow', 'snowforest/overlaysnow', -580, 100);
	scaleObject('overlaysnow', 1, 1);
	setScrollFactor('overlaysnow', 1, 1);
	setObjectOrder('overlaysnow', 5);
	setBlendMode('overlaysnow', 'add');

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeLuaSprite('stagelight_left', 'stage_light', -125, -100);
		setScrollFactor('stagelight_left', 0.9, 0.9);
		scaleObject('stagelight_left', 1.1, 1.1);
		
		makeLuaSprite('stagelight_right', 'stage_light', 1225, -100);
		setScrollFactor('stagelight_right', 0.9, 0.9);
		scaleObject('stagelight_right', 1.1, 1.1);
		setProperty('stagelight_right.flipX', true); --mirror sprite horizontally

		makeLuaSprite('stagecurtains', 'stagecurtains', -500, -300);
		setScrollFactor('stagecurtains', 1.3, 1.3);
		scaleObject('stagecurtains', 0.9, 0.9);
	end

	addLuaSprite('whitevoid', false);
	addLuaSprite('treesnow', false);
	addLuaSprite('snow', false);
	addLuaSprite('overlaysnow', true);
	
	--addLuaSprite('stagelight_left', false);
	--addLuaSprite('stagelight_right', false);
	--addLuaSprite('stagecurtains', false);
end