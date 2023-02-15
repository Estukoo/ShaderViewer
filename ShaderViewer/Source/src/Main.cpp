#include <iostream>

#include "WindowGUI.h"
#include "ShaderUtil.h"
#include "Utils/VertexBuffer.hpp"

#include <GL/glew.h>
#include <GLFW/glfw3.h>

#include <vector>

void WindowGUI::PreRender()
{
	/* Attributes */
	shader_util->SetAttribute("in_attr0", in_attr0);
	shader_util->SetAttribute("in_attr1", in_attr1);
	shader_util->SetAttribute("in_attr3", in_attr3);
	shader_util->SetAttribute("in_attr4", in_attr4);
	shader_util->SetAttribute("in_attr5", in_attr5);
	shader_util->SetAttribute("in_attr6", in_attr6);

	shader_util->SetUBO("vp_c1",  vp_c1_data,  0);
	shader_util->SetUBO("vp_c8",  vp_c8_data,  2);
	shader_util->SetUBO("vp_c9",  vp_c9_data,  3);
	shader_util->SetUBO("vp_c10", vp_c10_data, 4);

	shader_util->SetUBO("fp_c8", fp_c8_data, 5);
	shader_util->SetUBO("fp_c9", fp_c9_data, 6);


	/* Textures */
	shader_util->LoadImage("Assets/BoTW/1.png", 7);
	shader_util->LoadImage("Assets/BoTW/2.png", 8);
	// shader_util->LoadImage("Assets/BoTW/3.jpg", 9); // Useless : background pour le rendu de la lumière

	/* Uniforms */
	// No uniforms used
}

void WindowGUI::Render()
{
	/* Uniforms */
	shader_util->SetUniform1f("rad", time);

	/* Draw Call */
	shader_util->DrawVertex(in_attr0);
}

int main()
{
	WindowGUI window_gui(1280, 720, "Hello Shader");

	window_gui.InitGLEW();
	window_gui.InitShaderUtil("Shaders/BoTW/VS.glsl", "Shaders/BoTW/FS.glsl");
	window_gui.Loop(1.0f, 1.0f, 1.0f, 1.0f);

	return 0;
}