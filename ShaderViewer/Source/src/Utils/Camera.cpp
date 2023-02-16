#include"Camera.h"

Camera::Camera(WindowGUI& window, glm::vec3 position) : mWindow(window), Position(position) {}

void Camera::Matrix(float FOVdeg, float nearPlane, float farPlane, ShaderUtil& shader, const char* uniform)
{
	// Initializes matrices since otherwise they will be the null matrix
	glm::mat4 view = glm::mat4(1.0f);
	glm::mat4 projection = glm::mat4(1.0f);

	// Makes camera look in the right direction from the right position
	view = glm::lookAt(Position, Position + Orientation, Up);
	// Adds perspective to the scene
	projection = glm::perspective(glm::radians(FOVdeg), (float)mWindow.mWidth / mWindow.mHeight, nearPlane, farPlane);

	// Exports the camera matrix to the Vertex Shader
	glUniformMatrix4fv(glGetUniformLocation(shader.mProgramId, uniform), 1, GL_FALSE, glm::value_ptr(projection * view));
}

void Camera::Inputs()
{
	// Handles key inputs
	if (mWindow.GetKey(GLFW_KEY_W))
	{
		Position += speed * Orientation;
	}
	if (mWindow.GetKey(GLFW_KEY_A))
	{
		Position += speed * -glm::normalize(glm::cross(Orientation, Up));
	}
	if (mWindow.GetKey(GLFW_KEY_S))
	{
		Position += speed * -Orientation;
	}
	if (mWindow.GetKey(GLFW_KEY_D))
	{
		Position += speed * glm::normalize(glm::cross(Orientation, Up));
	}
	if (mWindow.GetKey(GLFW_KEY_SPACE))
	{
		Position += speed * Up;
	}
	if (mWindow.GetKey(GLFW_KEY_LEFT_CONTROL))
	{
		Position += speed * -Up;
	}
	if (!mWindow.GetKey(GLFW_KEY_LEFT_SHIFT))
	{
		speed = 0.004f;
	}
	else if (mWindow.GetKey(GLFW_KEY_LEFT_SHIFT))
	{
		speed = 0.1f;
	}

	// Handles mouse inputs
	if (!mWindow.GetKey(GLFW_MOUSE_BUTTON_LEFT))
	{
		// Hides mouse cursor
		glfwSetInputMode(mWindow.GetWindow(), GLFW_CURSOR, GLFW_CURSOR_HIDDEN);


		// Prevents camera from jumping on the first click
		if (firstClick)
		{
			glfwSetCursorPos(mWindow.GetWindow(), (mWindow.mWidth / 2), (mWindow.mHeight / 2));
			firstClick = false;
		}

		// Stores the coordinates of the cursor
		double mouseX, mouseY;
		// Fetches the coordinates of the cursor
		glfwGetCursorPos(mWindow.GetWindow(), &mouseX, &mouseY);

		// Normalizes and shifts the coordinates of the cursor such that they begin in the middle of the screen
		// and then "transforms" them into degrees 
		float rotX = sensitivity * (float)(mouseY - (mWindow.mHeight / 2)) / mWindow.mHeight;
		float rotY = sensitivity * (float)(mouseX - (mWindow.mWidth / 2)) / mWindow.mWidth;

		// Calculates upcoming vertical change in the Orientation
		glm::vec3 newOrientation = glm::rotate(Orientation, glm::radians(-rotX), glm::normalize(glm::cross(Orientation, Up)));

		// Decides whether or not the next vertical Orientation is legal or not
		if (abs(glm::angle(newOrientation, Up) - glm::radians(90.0f)) <= glm::radians(85.0f))
		{
			Orientation = newOrientation;
		}

		// Rotates the Orientation left and right
		Orientation = glm::rotate(Orientation, glm::radians(-rotY), Up);

		// Sets mouse cursor to the middle of the screen so that it doesn't end up roaming around
		glfwSetCursorPos(mWindow.GetWindow(), (mWindow.mWidth / 2), (mWindow.mHeight / 2));
	}
	else if (mWindow.GetKey(GLFW_MOUSE_BUTTON_LEFT))
	{
		// Unhides cursor since camera is not looking around anymore
		glfwSetInputMode(mWindow.GetWindow(), GLFW_CURSOR, GLFW_CURSOR_NORMAL);
		// Makes sure the next time the camera looks around it doesn't jump
		firstClick = true;
	}
}