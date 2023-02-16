#include <iostream>

#include "VertexBuffer.hpp"
#include "Utils/WindowGUI.h"
#include "Utils/ShaderUtil.h"
#include "Utils/WindowGUI.h"

void WindowGUI::PreRender()
{
	/* Attributes */
	mShaderUtil.SetAttribute("in_attr0", in_attr0);
	mShaderUtil.SetAttribute("in_attr1", in_attr1);
	mShaderUtil.SetAttribute("in_attr3", in_attr3);
	mShaderUtil.SetAttribute("in_attr4", in_attr4);
	mShaderUtil.SetAttribute("in_attr5", in_attr5);
	mShaderUtil.SetAttribute("in_attr6", in_attr6);

	/* Uniform Buffer Objects */
	mShaderUtil.SetUBO("vp_c1",  vp_c1_data,  0);
	mShaderUtil.SetUBO("vp_c8",  vp_c8_data,  2);
	mShaderUtil.SetUBO("vp_c9",  vp_c9_data,  3);
	mShaderUtil.SetUBO("vp_c10", vp_c10_data, 4);

	mShaderUtil.SetUBO("fp_c8", fp_c8_data, 5);
	mShaderUtil.SetUBO("fp_c9", fp_c9_data, 6);

	/* Textures */
	mShaderUtil.LoadImage("Assets/BoTW/1.png", 7);
	mShaderUtil.LoadImage("Assets/BoTW/2.png", 8);
}

void WindowGUI::Render()
{
	/* Uniforms */
	mShaderUtil.SetUniform1f("rad", mTime);

	/* Draw Call */
	mShaderUtil.DrawVertex(in_attr0);
}

int main()
{
	WindowGUI window_gui(1280, 720, "BoTW Shaders - v1.0");

	window_gui.InitGLEW();
	window_gui.InitShaderUtil("Shaders/BoTW/VS.glsl", "Shaders/BoTW/FS.glsl");
	window_gui.Clear(1.0f, 1.0f, 1.0f, 1.0f);
	window_gui.SetCamera();
	window_gui.Loop();

	return 0;
}