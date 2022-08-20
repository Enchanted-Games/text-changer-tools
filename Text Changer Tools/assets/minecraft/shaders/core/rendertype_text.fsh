#version 150

#moj_import <fog.glsl>
#moj_import <text_changer_tools_colours.glsl>

uniform sampler2D Sampler0;

uniform vec4 ColorModulator;
uniform float FogStart;
uniform float FogEnd;
uniform mat4 ProjMat;
uniform vec4 FogColor;

in float vertexDistance;
in vec4 vertexShading;
in vec4 vertexColor;
in vec3 vertexPos;
in vec2 texCoord0;

out vec4 fragColor;

bool renderPrecise = false;

bool isShadow() {
    if(ProjMat[3][0] == -1 && (vertexPos.z == -200 || vertexPos.z == 0.01 || vertexPos.z == 0 || vertexPos.z == 100.01 || vertexPos.z == 100 || vertexPos.z == 400 ) ) {
        return true;
    } 
    else {
        return false;
    }
}

void main() {
    vec4 color = vertexColor;

    // red (gui)
    if(color.rgb == vec3(1, 0.3333333333333333, 0.3333333333333333) ){
        color.rgb = colours[0];
    }
    // red (gui) shadow
    else if(color.rgb == vec3(0.24705882352941178, 0.08235294117647059, 0.08235294117647059) && isShadow() ){
        color.rgb = colours[1];
    }

    // dark red (gui)
    else if(color.rgb == vec3(0.6666666666666666, 0, 0)){
        color.rgb = colours[2];
    }
    // dark red (gui) shadow
    else if(color.rgb == vec3(0.16470588235294117, 0, 0) && isShadow() ){
        color.rgb = colours[3];
    }

    // color.rgb = vec3((vertexPos.z * -1) / 1000, 0, 0);

    if(!renderPrecise) {
        vec4 texColor = texture(Sampler0, texCoord0) * color * ColorModulator;
        // vec4 texColor = color;
        if (texColor.a < 0.1) {
            discard;
        }
        fragColor = linear_fog((texColor * vertexShading), vertexDistance, FogStart, FogEnd, FogColor);
    }
    else{
        fragColor = color;
    }
}
