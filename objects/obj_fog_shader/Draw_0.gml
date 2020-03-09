shader_set(shader_fog);
shader_set_uniform_f(_uniTime, __time);
draw_self();
shader_reset();  