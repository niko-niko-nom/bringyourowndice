shader_type canvas_item;

uniform vec2 scroll_speed = vec2(10.0, 10.0); // pixels per second
uniform float custom_time = 0.0;
uniform vec2 texture_scale = vec2(1.0, 1.0);

void fragment() {
    vec2 uv = UV * texture_scale;
    uv += custom_time * scroll_speed / 100.0;
    COLOR = texture(TEXTURE, fract(uv));
}
