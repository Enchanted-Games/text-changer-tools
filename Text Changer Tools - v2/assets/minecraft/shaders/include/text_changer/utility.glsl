// thank yu Godlander for these

int toint(vec3 col) {
   ivec3 icol = ivec3(col*255);
   return (icol.r << 16) + (icol.g << 8) + icol.b;
}
vec3 tovec(int col) {
    return vec3(col >> 16, (col >> 8) % 256, col % 256) / 255.;
}
bool rougheq(vec4 color, vec4 target) {
    float acc = 10000;
    return all(lessThan(abs(color-target),vec4(acc)));
}
