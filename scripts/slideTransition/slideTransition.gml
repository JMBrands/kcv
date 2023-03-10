// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @function slideTransition(_mode, _targetroom);
/// @desc slideTransition(_mode, _targetroom)
/// @arg _mode sets transition mode between next, restart and goto
/// @arg [_targetroom] sets target room for goto mode

function slideTransition(_mode, _targetroom){
	oGame.mode = _mode;
	oGame.target = _targetroom;
}