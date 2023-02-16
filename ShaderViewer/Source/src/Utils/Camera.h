#pragma once

#include "WindowGUI.h"

#include <string>

#include<GLFW/glfw3.h>
#include<glm/glm.hpp>
#include<glm/gtc/matrix_transform.hpp>
#include<glm/gtc/type_ptr.hpp>
#include<glm/gtx/rotate_vector.hpp>
#include<glm/gtx/vector_angle.hpp>

class Camera
{
public:
	// Stores the main vectors of the camera
	glm::vec3 Position;
	glm::vec3 Orientation = glm::vec3(0.0f, 0.0f, -1.0f);
	glm::vec3 Up = glm::vec3(0.0f, 1.0f, 0.0f);

	// Prevents the camera from jumping around when first clicking left click
	bool firstClick = true;

	// Stores the width and height of the window
    WindowGUI& mWindow;

	// Adjust the speed of the camera and it's sensitivity when looking around
	float speed = 1.0f;
	float sensitivity = 100.0f;

	// Camera constructor to set up initial values
	Camera(WindowGUI& window, glm::vec3 position=glm::vec3(0.0f, 0.0f, 2.0f));

	// Updates and exports the camera matrix to the Vertex Shader
	void Matrix(float FOVdeg, float nearPlane, float farPlane, ShaderUtil& shader, const char* uniform);
	// Handles camera inputs
	void Inputs();
};