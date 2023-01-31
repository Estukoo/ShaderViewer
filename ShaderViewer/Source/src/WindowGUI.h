#pragma once
#ifndef WINDOW_GUI_H
#define WINDOW_GUI_H

#include "ShaderUtil.h"

#include <GL/glew.h>
#include <GLFW/glfw3.h>
#include <iostream>

class WindowGUI {
public:
	WindowGUI(unsigned int width, unsigned int height, const std::string& title);
	~WindowGUI();

	void InitGLEW();
	void InitShaderUtil(const std::string& vertex_shader_file, const std::string& fragment_shader_file);
	void Loop(float red, float green, float blue, float alpha);
	void PreRender();
	void Render();
	bool ShouldClose();

	/* Utils members*/
	int width;
	int height;
	float time;

private:
	void CalculateUtilsMembers();
	
	GLFWwindow* window;
	ShaderUtil* shader_util;
};

#endif
