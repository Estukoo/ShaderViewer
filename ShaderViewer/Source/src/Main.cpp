#include <iostream>

#include "WindowGUI.h"
#include "ShaderUtil.h"
#include "Utils/VertexBuffer.hpp"

#include <GL/glew.h>
#include <GLFW/glfw3.h>

void WindowGUI::PreRender()
{
	/* Attributes */
	shader_util->SetAttribute<float>("aPos", *Vertices);
	shader_util->SetAttribute<float>("aVertColor", *VertColors);
	shader_util->SetAttribute<float>("aTexCoord", *TexCoords);

	/* Textures */
	shader_util->LoadImage("Assets/image.png", 0);

	/* Uniforms */
	shader_util->SetUniform1i("tex", 0);
}

void WindowGUI::Render()
{
	/* Uniforms */
	shader_util->SetUniform1f("time", time);

	shader_util->DrawVertex(*Vertices);
}

int main()
{
	WindowGUI* window_gui = new WindowGUI(1280, 720, "Hello Shader");

	window_gui->InitGLEW();
	window_gui->InitShaderUtil("Shaders/Anim/jiggle.glsl", "Shaders/fs.shader");
	window_gui->Loop(1.0f, 1.0f, 1.0f, 1.0f);

	delete window_gui;
	return 0;
}