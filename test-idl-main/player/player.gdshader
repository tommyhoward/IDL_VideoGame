shader_type canvas_item;

uniform int pixel_size = 4;
uniform sampler2D SCREEN_TEXTURE : hint_screen_texture, filter_nearest;

void fragment() {
	float x = float(int(FRAGCOORD.x) / pixel_size) * float(pixel_size);
	float y = float(int(FRAGCOORD.y) / pixel_size) * float(pixel_size);
	
	COLOR = texture(SCREEN_TEXTURE, vec2(x, y) * SCREEN_PIXEL_SIZE);
}