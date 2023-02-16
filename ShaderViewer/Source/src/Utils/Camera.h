#pragma once

#include "WindowGUI.h"

#include <string>

#include <glm/glm.hpp>
#include <glm/gtc/matrix_transform.hpp>
#include <GL/glew.h>
#include <GLFW/glfw3.h>

class Camera {
public:
    Camera(WindowGUI& window, glm::vec3 position = glm::vec3(0.0f, 0.0f, 2.0f));

    // Inputs from the user (e.g. keyboard and mouse)
    void Inputs();

    // Get the view matrix for the camera
    glm::mat4 ViewMatrix() const;

    // Get the projection matrix for the camera
    glm::mat4 ProjectionMatrix(float fov, float nearPlane, float farPlane) const;

    // Send the camera matrix to a shader program
    void Matrix(float fov, float nearPlane, float farPlane, GLuint shaderProgram, const std::string& uniformName) const;

private:
    WindowGUI& mWindow;
    glm::vec3 mPosition;
    glm::vec3 mFront;
    glm::vec3 mUp;
    glm::vec3 mRight;
    glm::vec3 mWorldUp;
    float mYaw;
    float mPitch;
    float mMovementSpeed;
    float mMouseSensitivity;
    float mZoom;
};