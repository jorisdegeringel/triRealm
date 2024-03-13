// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function init(){
	if (!instance_exists(oPlayer) and room != Room4) {
		instance_create_layer(global.target_x, global.target_y, "Player", oPlayer);
	}
	randomize();
	if (!instance_exists(oCamera)) {
		instance_create_layer(oPlayer.x, oPlayer.y, "Player", oCamera);
	}
}