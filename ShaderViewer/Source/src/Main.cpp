#include <iostream>

#include "VertexBuffer.hpp"
#include "Utils/WindowGUI.h"
#include "Utils/ShaderUtil.h"

void WindowGUI::PreRender()
{
	/* Attributes */
	shaderUtil.SetAttribute("in_attr0", in_attr0);
	shaderUtil.SetAttribute("in_attr1", in_attr1);
	shaderUtil.SetAttribute("in_attr3", in_attr3);
	shaderUtil.SetAttribute("in_attr4", in_attr4);
	shaderUtil.SetAttribute("in_attr5", in_attr5);
	shaderUtil.SetAttribute("in_attr6", in_attr6);

	/* Uniform Buffer Objects */
	shaderUtil.SetUBO("vp_c1",  vp_c1_data,  0);
	shaderUtil.SetUBO("vp_c8",  vp_c8_data,  2);
	shaderUtil.SetUBO("vp_c9",  vp_c9_data,  3);
	shaderUtil.SetUBO("vp_c10", vp_c10_data, 4);

	shaderUtil.SetUBO("fp_c8", fp_c8_data, 5);
	shaderUtil.SetUBO("fp_c9", fp_c9_data, 6);

	/* Textures */
	shaderUtil.LoadImage("Assets/BoTW/1.png", 7);
	shaderUtil.LoadImage("Assets/BoTW/2.png", 8);
}

void WindowGUI::Render()
{
	/* Uniforms */
	shaderUtil.SetUniform1f("rad", mTime);

	/* Draw Call */
	shaderUtil.DrawVertex(in_attr0);
}

int main()
{
	WindowGUI windowGUI(1280, 720, "BoTW Shaders - v1.0");

	windowGUI.InitGLEW();
	windowGUI.InitShaderUtil("Shaders/BoTW/VS.glsl", "Shaders/BoTW/FS.glsl");
	windowGUI.Clear(1.0f, 1.0f, 1.0f, 1.0f);
	windowGUI.SetCamera(Camera(windowGUI.mWidth, windowGUI.mHeight));
	windowGUI.Loop();

	return 0;
}