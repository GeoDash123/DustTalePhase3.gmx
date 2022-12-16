//
// Simple passthrough vertex shader
//
attribute vec3 in_Position;                  // (x,y,z)
//attribute vec3 in_Normal;                  // (x,y,z)     unused in this shader.	
attribute vec4 in_Colour;                    // (r,g,b,a)
attribute vec2 in_TextureCoord;              // (u,v)

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    vec4 object_space_pos = vec4( in_Position.x, in_Position.y, in_Position.z, 1.0);
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * object_space_pos;
    
    v_vColour = in_Colour;
    v_vTexcoord = in_TextureCoord;
}

//######################_==_YOYO_SHADER_MARKER_==_######################@~


//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

//uni
uniform float Time;
uniform sampler2D Noise;

uniform vec2 NoiseSize;

//const
//const float Speed = 0.01;
//const float Size = 0.001;
//const float Freq = 0.4;
uniform float Speed;
uniform float Size;
uniform float Freq;

void main()
{
    //Tex
    vec4 Tex = texture2D(Noise, v_vTexcoord/Freq);

    //Waves
    vec2 Wave;
    //Wave.x = sin(Time*Speed + v_vTexcoord.y*Freq) * Size;
    //Wave.y = sin(Time*Speed + v_vTexcoord.x*Freq) * Size;
    Wave.x = sin((Time*Speed) + Tex.r*40.0) * Size;
    Wave.y = sin((Time*Speed) + Tex.g*40.0) * Size;
    
    gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord + Wave);
}

