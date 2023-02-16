#include "Camera.h"

#include <glm/gtc/type_ptr.hpp>

// Constructor
Camera::Camera(WindowGUI& window, glm::vec3 position)
    : mWindow(window)
    , mPosition(position)
    , mFront(glm::vec3(0.0f, 0.0f, 0.0f))
    , mUp(glm::vec3(0.0f, 1.0f, 0.0f))
    , mRight(glm::vec3(1.0f, 0.0f, 0.0f))
    , mWorldUp(glm::vec3(0.0f, 1.0f, 0.0f))
    , mYaw(-0.0f)
    , mPitch(0.0f)
    , mMovementSpeed(0.5f)
    , mMouseSensitivity(0.1f)
    , mZoom(12.0f)
{}

// Inputs from the user (e.g. keyboard and mouse)
void Camera::Inputs() {
    // Update the camera position based on user input
    if (mWindow.GetKey(GLFW_KEY_Z)) {
        mPosition += mMovementSpeed * mFront;
    }
    if (mWindow.GetKey(GLFW_KEY_S)) {
        mPosition -= mMovementSpeed * mFront;
    }
    if (mWindow.GetKey(GLFW_KEY_Q)) {
        mPosition -= mMovementSpeed * mRight;
    }
    if (mWindow.GetKey(GLFW_KEY_D)) {
        mPosition += mMovementSpeed * mRight;
    }

    // Update the camera orientation based on mouse input
    double xpos, ypos;
    glfwGetCursorPos(mWindow.GetWindow(), &xpos, &ypos);

    double xoffset = xpos - mWindow.mWidth / 2.0;
    double yoffset = mWindow.mHeight / 2.0 - ypos;

    xoffset *= mMouseSensitivity;
    yoffset *= mMouseSensitivity;

    mYaw += xoffset;
    mPitch += yoffset;

    if (mPitch > 89.0f) {
        mPitch = 89.0f;
    }
    if (mPitch < -89.0f) {
        mPitch = -89.0f;
    }

    glm::vec3 front;
    front.x = cos(glm::radians(mYaw)) * cos(glm::radians(mPitch));
    front.y = sin(glm::radians(mPitch));
    front.z = sin(glm::radians(mYaw)) * cos(glm::radians(mPitch));
    mFront = glm::normalize(front);
    mRight = glm::normalize(glm::cross(mFront, mWorldUp));
    mUp = glm::normalize(glm::cross(mRight, mFront));
}

// Get the view matrix for the camera
glm::mat4 Camera::ViewMatrix() const {
    return glm::lookAt(mPosition, mPosition + mFront, mUp);
}

// Get the projection matrix for the camera
glm::mat4 Camera::ProjectionMatrix(float fov, float nearPlane, float farPlane) const {
    return glm::perspective(glm::radians(fov), (float)mWindow.mWidth / (float)mWindow.mHeight, nearPlane, farPlane);
}

// Send the camera matrix to a shader program
void Camera::Matrix(float fov, float nearPlane, float farPlane, GLuint shaderProgram, const std::string& uniformName) const {
    glm::mat4 viewMatrix = ViewMatrix();
    glm::mat4 projectionMatrix = ProjectionMatrix(fov, nearPlane, farPlane);

    GLuint matrixLocation = glGetUniformLocation(shaderProgram, uniformName.c_str());
    glUniformMatrix4fv(matrixLocation, 1, GL_FALSE, glm::value_ptr(projectionMatrix * viewMatrix));
}