#pragma once

#include <iostream>

#include "ShaderUtil.h"
#include "Camera.h"

#include <GLFW/glfw3.h>

class WindowGUI {
public:
	WindowGUI(unsigned int width, unsigned int height, const std::string& title);
	~WindowGUI();

	void InitGLEW();
	void InitShaderUtil(const std::string& vertex_shader_file, const std::string& fragment_shader_file);
	void Clear(float red, float green, float blue, float alpha);
	bool ShouldClose();
	void PreRender();
	void Render();
	void Loop();
	void SetCamera(const Camera& camera); // <-- Ajout de cette méthode

	/* Utils members*/
	int mWidth;
	int mHeight;
	float mTime;

private:
	void CalculateUtilsMembers();
	
	GLFWwindow* mWindow;
	ShaderUtil shaderUtil;
	Camera mCamera;
};