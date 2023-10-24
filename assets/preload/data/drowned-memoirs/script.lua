function onCreate()
	-- CHARACTER
	setPropertyFromClass('substates.GameOverSubstate', 'characterName', 'bf13-dead');
	
	-- SOUNDS/MUSICS
	setPropertyFromClass('substates.GameOverSubstate', 'deathSoundName', 'fnf_loss_sfx_phase1'); --file goes inside sounds/ folder
	setPropertyFromClass('substates.GameOverSubstate', 'loopSoundName', 'gameOver'); --file goes inside music/ folder
	setPropertyFromClass('substates.GameOverSubstate', 'endSoundName', 'gameOverEnd'); --file goes inside music/ folder
end
function onStartCountdown()
	if not allowEnd and not seenCutscene then
		startVideo('jason-cutscene-phase-1-intro');
		allowEnd = true;
		return Function_Stop;
	end
	return Function_Continue;
end
function onEndSong()
	if not allowEnd and not seenCutscene then
		startVideo('jason-cutscene-phase-1-end');
		allowEnd = true;
		return Function_Stop;
	end
	return Function_Continue;
end
