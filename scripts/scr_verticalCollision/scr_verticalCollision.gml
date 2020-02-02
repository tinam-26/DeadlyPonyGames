var coll = instance_place(x, y+vspeed, obj_platforms) //get object collided with

if(coll != noone){
	var y_dis = coll.y - y
	
	var combined_Height = (sprite_height + coll.sprite_height) //combined height of self and other sprite
	if(coll.y > y){
		y += y_dis - (combined_Height/2) 
	}else{
		y += y_dis + (combined_Height/2)
	}
	
	vspeed = 0
	gravity = 0
}

if(coll == noone){ //if not colliding (allows for falling)
	gravity = 1
}