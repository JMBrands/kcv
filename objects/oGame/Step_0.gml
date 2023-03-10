/// @description Insert description here
// You can write your code in this editor


if (mode != TRANS_MODE.OFF) {
	if (mode == TRANS_MODE.INTRO) {
		percent = max(0,percent - max((percent/10), 0.005));
	} else {
		percent = min(1.5,percent + max(((1.5-percent)/10), 0.005));
	}
	if (percent == 0) || (percent == 1.5) {
		switch (mode) {
			case TRANS_MODE.INTRO: {
				mode = TRANS_MODE.OFF;
				break;
			}
			case TRANS_MODE.NEXT: {
				mode = TRANS_MODE.INTRO;
				room_goto_next();
				break;
			}
			case TRANS_MODE.GOTO: {
				mode = TRANS_MODE.INTRO;
				room_goto(target);
				break;
			}
			case TRANS_MODE.RESTART: {
				mode = TRANS_MODE.INTRO;
				room_restart();
				break;
			}
		}
	}
}
