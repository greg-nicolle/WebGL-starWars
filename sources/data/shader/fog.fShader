precision highp float;

uniform sampler2D texture0;
uniform vec3 fogColor;
uniform vec2 fogDistances;

varying vec3 vColor;
varying vec2 vUv;

void main() {
    gl_FragColor = texture2D( texture0, vUv );
    gl_FragColor.rgb *= vColor;
    float fogRate = smoothstep( fogDistances.x, fogDistances.y, gl_FragCoord.z / gl_FragCoord.w);
    gl_FragColor.rgb = mix(gl_FragColor.rgb, fogColor, fogRate);
}