attribute vec3 position;
attribute vec3 normal;

uniform mat4 projectionMatrix;
uniform mat4 viewMatrix;

varying vec2 uvMapping;

void main(void) {
    //todo: compute uv from normal.xy
    uvMapping = normal.xy;
    gl_Position = projectionMatrix * viewMatrix * vec4(position, 1.0);
    gl_PointSize = normal.z / gl_Position.z;
}
