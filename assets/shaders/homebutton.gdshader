shader_type canvas_item;

uniform bool invert = false;

void fragment() {
	vec4 tex_color = texture(TEXTURE, UV);
	if (invert) {
		tex_color.rgb = 1.0 - tex_color.rgb;
	}
	COLOR = tex_color;
}