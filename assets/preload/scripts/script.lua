function onCreate()
	-- CHARACTER
	setPropertyFromClass('substates.GameOverSubstate', 'characterName', 'bf13-dead');
	
	-- SOUNDS/MUSICS
	setPropertyFromClass('substates.GameOverSubstate', 'deathSoundName', 'fnf_loss_sfx_phase1'); --file goes inside sounds/ folder
	setPropertyFromClass('substates.GameOverSubstate', 'loopSoundName', 'gameOver'); --file goes inside music/ folder
	setPropertyFromClass('substates.GameOverSubstate', 'endSoundName', 'gameOverEnd'); --file goes inside music/ folder

	-- CHARACTER
	setPropertyFromClass('substates.GameOverSubstate', 'characterName', 'bf13ph2-dead');
	
	-- SOUNDS/MUSICS
	setPropertyFromClass('substates.GameOverSubstate', 'deathSoundName', 'fnf_loss_sfx_phase2'); --file goes inside sounds/ folder
	setPropertyFromClass('substates.GameOverSubstate', 'loopSoundName', 'gameOver'); --file goes inside music/ folder
	setPropertyFromClass('substates.GameOverSubstate', 'endSoundName', 'gameOverEnd'); --file goes inside music/ folder

	-- CHARACTER
	setPropertyFromClass('substates.GameOverSubstate', 'characterName', 'hiker-dead');
	
	-- SOUNDS/MUSICS
	setPropertyFromClass('substates.GameOverSubstate', 'deathSoundName', 'fnf_loss_sfx_blizzard'); --file goes inside sounds/ folder
	setPropertyFromClass('substates.GameOverSubstate', 'loopSoundName', 'gameOver'); --file goes inside music/ folder
	setPropertyFromClass('substates.GameOverSubstate', 'endSoundName', 'gameOverEnd'); --file goes inside music/ folder
end
