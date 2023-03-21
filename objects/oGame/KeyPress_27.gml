/// @description Insert description here
// You can write your code in this editor

switch (state) {
	case (GAME_STATES.PLAY): {
		state = GAME_STATES.PAUSE;
		break;
	}
	case (GAME_STATES.PAUSE): {
		state = GAME_STATES.PLAY;
		break;
	}
	default: {
		break;
	}
}


