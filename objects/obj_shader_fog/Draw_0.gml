/// @description Insert description here
// You can write your code in this editor

shader_set(shader_fog);
shader_set_uniform_f(_uniTime, __time);
draw_self();
shader_reset(); 