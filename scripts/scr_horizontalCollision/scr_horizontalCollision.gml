/*var coll = instance_place(x+hspeed, y, obj_platforms) //other object

if(coll != noone){ //if collided
	var x_dis = coll.x - x 
	
	var combined_Width = (sprite_width + coll.sprite_width) //combined widths of self and collided
	if(x_dis>=0){
		x += x_dis - (combined_Width/2)
	}else{
		x += x_dis + (combined_Width/2)
	}
	
	hspeed = 0
}

if(coll == noone){ //allows for falling
	gravity = .5
}*/
if(place_meeting(x, y + vspeed, obj_platforms)){//if collided
	for(var i = 0; i<abs(vspeed); i++){
		if(!place_meeting(x, y + sign(speed), obj_platforms))
		y+= sign(vspeed)
		else
			break
	}
	vspeed = 0
	gravity = 0
}