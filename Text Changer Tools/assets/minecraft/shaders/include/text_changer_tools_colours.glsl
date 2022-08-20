// vec3 getShadowCol( vec3 inputColour){
//     // darkens and saturates the input colour a nit to get a text shadow colour
//     vec3 hslCol = rgb2hsv(inputColour);
//     hslCol.b -= 0.5;
//     hslCol.g += 0.3;
    
//     return hsv2rgb(hslCol);
// }

vec3 colours[4] = vec3[](
    vec3(1, 0.333333, 0.333333), // Red (gui)
    vec3(0.24705882352941178, 0.08235294117647059, 0.08235294117647059), // Red (gui) shadow
    vec3(1, 0.333333, 0.333333), // Dark Red (gui)
    vec3(1.0, 1.0, 1.0) // Dark Red (gui) shadow
);