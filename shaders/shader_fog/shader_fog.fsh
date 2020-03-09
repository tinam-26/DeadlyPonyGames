//adapted from: https://thebookofshaders.com/13/

varying vec2 v_vTexcoord; //== uv
varying vec4 v_vColour; //not used

int OCTAVES = 8; //fineness of the fog
uniform float u_time; //for motion, passed in every step
 
//generates "random" numbers 
float rand(vec2 uv)
{
	return fract(sin(dot(uv,vec2(78.4563,7.89098)))*758.5453123);
}

//generates noise
float noise(vec2 uv){
	vec2 i = floor(uv); //whole number part of coordinate
	vec2 f = fract(uv); //fractional part of coordinate
	
	//"rectangle" around point - generates random number for each point 
	float a = rand(i); 
	float b = rand(i + vec2(1.0, 0.0)); 
	float c = rand(i + vec2(0.0, 1.0)); 
	float d = rand(i + vec2(1.0, 1.0)); 
	
	//uses points to create alpha value (linear interpolation) 
	return mix(a, b, f.x) + (c - a)* f.y * (1.0 - f.x) +
            (d - b) * f.x * f.y;
}

//fractal brownian motion
float fbm(vec2 uv){
	float value = 0.0;
	float scale = 0.5; 
	
	for(int i = 0; i < OCTAVES; i++){
		value += noise(uv) * scale; //adds noise each iteration
		uv *= 2.0; 
		scale *= 0.5; 
	}
	
	return value; 
}

void main()
{
	vec2 coord = v_vTexcoord * 60.0; 
	vec2 motion = vec2(fbm(coord + u_time * .005));  //animates fog 
	float final = fbm(motion + coord * 0.5); //secondary pass through fbm
	
    gl_FragColor = vec4(vec3(0.5,0.1,0.6),final); //vec3 = color, final = alpha
}
