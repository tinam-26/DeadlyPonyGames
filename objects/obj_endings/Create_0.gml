sprite_index = spr_endings
image_speed = 0

if(global.good_count > global.bad_count) {
    image_index = 0
}
else if(global.bad_count > global.good_count) {
    image_index = 1
}
else {
    image_index = 0
}