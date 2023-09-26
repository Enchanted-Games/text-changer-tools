#version 150

#moj_import <fog.glsl>
#moj_import <text_changer/utility.glsl>

#moj_import <text_changer/text_colours/enchanting.glsl>
#moj_import <text_changer/text_colours/gui.glsl>
#moj_import <text_changer/text_colours/misc.glsl>
#moj_import <text_changer/text_colours/signs.glsl>
#moj_import <text_changer/text_colours/world.glsl>

in vec3 Position;
in vec4 Color;
in vec2 UV0;
in ivec2 UV2;

uniform sampler2D Sampler2;

uniform mat4 ModelViewMat;
uniform mat4 ProjMat;
uniform mat3 IViewRotMat;
uniform int FogShape;

out float vertexDistance;
out vec4 vertexColor;
out vec2 texCoord0;

bool isShadow() {
    // returns true if text is considered as a "text shadow"
    if(ProjMat[3][0] == -1 && (Position.z == 200 || Position.z == 300 || Position.z == -200 || Position.z == 0.01 || Position.z == 0 || Position.z == 100.01 || Position.z == 100 || Position.z == 400 ) ) {
        return true;
    } 
    else {
        return false;
    }
}

void main() {
    gl_Position = ProjMat * ModelViewMat * vec4(Position, 1.0);
    texCoord0 = UV0;
    vertexDistance = fog_distance(ModelViewMat, IViewRotMat * Position, FogShape);
    vec4 vertexShading = texelFetch(Sampler2, UV2 / 16, 0);
    
    bool inGUI = (vertexDistance >= 800);
    vec3 col = Color.rgb;

    #moj_import <text_changer/text_check.glsl>

    vertexColor = vec4(col,Color.a) * vertexShading;
}
