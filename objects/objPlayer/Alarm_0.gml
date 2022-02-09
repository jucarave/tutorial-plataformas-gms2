/// @description Finalizando Dash

state = "idle";

var wall = collision_rectangle(x-width,y,x+width,y+1,objWall,true,true);

if (wall && wall.oneSided) {
	gravity = 0.3;
}