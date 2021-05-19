#version 330 core
layout (location = 0) in vec3 aPos;
layout (location = 1) in vec3 aColor;
layout (location = 2) in vec2 aTexCoord;

out vec3 ourColor;
out vec2 TexCoord;
out vec3 ourPosition;
uniform float fMovingX;
void main()
{
   //gl_Position = vec4(aPos.x+fMovingX, -aPos.y, aPos.z, 1.0);//原点在中心，Y轴坐标取变负值(-aPos.y)
   gl_Position = vec4(aPos, 1.0);
   ourColor = aColor;
   //ourPosition = aPos;
   TexCoord = aTexCoord;
}