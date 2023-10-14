
--How makeLuaSprite works:
--makeLuaSprite(<SPRITE VARIABLE>, <SPRITE IMAGE FILE NAME>, <X>, <Y>);
--"Sprite Variable" is how you refer to the sprite you just spawned in other methods like "setScrollFactor" and "scaleObject" for example

--so for example, i made the sprites "stagelight_left" and "stagelight_right", i can use "scaleObject('stagelight_left', 1.1, 1.1)"
--to adjust the scale of specifically the one stage light on left instead of both of them

function onCreate()
	makeLuaSprite('evilerhills', 'relentlessbg/evilerhills', -1050, -650);
	scaleObject('evilerhills', 1, 1);
	setScrollFactor('evilerhills', 1, 1);
	
	makeLuaSprite('evilhills', 'relentlessbg/evilhills', -1050, -650);
	scaleObject('evilhills', 1, 1);
	setScrollFactor('evilhills', 1, 1);
	
	makeLuaSprite('hopethoseguysarealright', 'relentlessbg/hopethoseguysarealright', -1050, -650);
	setScrollFactor('hopethoseguysarealright', 1, 1);
	scaleObject('hopethoseguysarealright', 1, 1);
	
	makeLuaSprite('forest_front 1', 'relentlessbg/forest_front 1', -1050, -650);
	scaleObject('forest_front 1', 1, 1);
	setScrollFactor('forest_front 1', 1, 1);
		setObjectOrder('forest_front 1', 1);
	
	makeLuaSprite('forest_front 2', 'relentlessbg/forest_front 2', -1050, -650);
	scaleObject('forest_front 2', 1, 1);
	setScrollFactor('forest_front 2', 1, 1);
	setObjectOrder('forest_front 2', 5);

	makeLuaSprite('lights', 'relentlessbg/lights', -1050, -650);
	scaleObject('lights', 1, 1);
	setScrollFactor('lights', 1, 1);
	setObjectOrder('lights', 6);
	setBlendMode('lights', 'add');

	makeLuaSprite('gradient', 'relentlessbg/gradient', -1050, -650);
	scaleObject('gradient', 1, 1);
	setScrollFactor('gradient', 1, 1);
	setObjectOrder('gradient', 5);
	setBlendMode('gradient', 'multiply');

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

	addLuaSprite('evilerhills', false);
	addLuaSprite('evilhills', false);
	addLuaSprite('hopethoseguysarealright', false);
	addLuaSprite('light', true);
	addLuaSprite('forest_front 1', false);
	addLuaSprite('forest_front 2', false);
	addLuaSprite('gradient', true);
	
	--addLuaSprite('stagelight_left', false);
	--addLuaSprite('stagelight_right', false);
	--addLuaSprite('stagecurtains', false);
end