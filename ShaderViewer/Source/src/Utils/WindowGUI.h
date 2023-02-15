#pragma once

#include <iostream>

#include "ShaderUtil.h"

#include <GLFW/glfw3.h>

class WindowGUI {
public:
	WindowGUI(unsigned int width, unsigned int height, const std::string& title);
	~WindowGUI();

	void InitGLEW();
	void InitShaderUtil(const std::string& vertex_shader_file, const std::string& fragment_shader_file);
	void Clear(float red, float green, float blue, float alpha);
	bool ShouldClose();
	void Loop();
	void PreRender();
	void Render();

	/* Utils members*/
	int width;
	int height;
	float time;

private:
	void CalculateUtilsMembers();
	
	GLFWwindow* window;
	ShaderUtil shader_util;
};