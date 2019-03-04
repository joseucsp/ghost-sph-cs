#version 430

layout(location = 0) in vec4 vposition;

out vec3 Position_worldspace;

//uniform mat4 MVP;
//uniform mat4 V;
uniform mat4 M_p;
uniform vec3 LightPosition_worldspace_p;

void main()
{
 	gl_Position = vposition;
 	
 	Position_worldspace = (M_p * (vposition)).xyz;
}