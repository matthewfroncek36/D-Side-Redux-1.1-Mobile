function setupNote(note) {
	if (note.noteType == 'Fight Note') {
		note.defScale.set(1, 1);
		note.reloadNote('FIGHT');
		note.noAnimation = true;
	}

	// trace(note.scale);
}

var anims = ['singLEFT', 'singDOWN', 'singUP', 'singRIGHT'];

function goodNoteHit(note) {
	if (note.noteType == 'Fight Note') {
		health += 0.125;
		boyfriend.playAnim(anims[note.noteData] + '-F', true);
		boyfriend.holdTimer = 0;
	}
}

function opponentNoteHit(note) {
	if (note.noteType == 'Fight Note') {
		health -= 0.1;
		dad.playAnim(anims[note.noteData] + '-F', true);
		dad.holdTimer = 0;
	}
}
