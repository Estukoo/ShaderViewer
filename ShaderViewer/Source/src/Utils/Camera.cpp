#include"Camera.h"

Camera::Camera(WindowGUI& window, glm::vec3 position) : mWindow(window), mPosition(position) {}

void Camera::Update(ShaderUtil& shader, const char* uniform) {
    // Calculate the view and projection matrices
    glm::mat4 view = glm::lookAt(mPosition, mPosition + mOrientation, mUp);
    glm::mat4 projection = glm::perspective(glm::radians(mFOV * mFOVScale), (float)mWindow.mWidth / (float)mWindow.mHeight, mNearPlane, mFarPlane);
    // Send the matrices to the shader
    GLuint uniformLoc = glGetUniformLocation(mWindow.GetShaderUtil().GetProgram(), uniform);
    glUniformMatrix4fv(uniformLoc, 1, GL_FALSE, glm::value_ptr(projection * view));
}


void Camera::HandleInput(WindowGUI& window) {
    // Handle movement keys
    if (window.GetKey(mKeyForward)) {
        mPosition += mSpeed * mOrientation;
    }
    if (window.GetKey(mKeyBackward)) {
        mPosition -= mSpeed * mOrientation;
    }
    if (window.GetKey(mKeyLeft)) {
        mPosition -= mSpeed * glm::normalize(glm::cross(mOrientation, mUp));
    }
    if (window.GetKey(mKeyRight)) {
        mPosition += mSpeed * glm::normalize(glm::cross(mOrientation, mUp));
    }
    if (window.GetKey(mKeyUp)) {
        mPosition += mSpeed * mUp;
    }
    if (window.GetKey(mKeyDown)) {
        mPosition -= mSpeed * mUp;
    }
    
    // Handle mouse movement
    if (glfwGetMouseButton(window.GetWindow(), GLFW_MOUSE_BUTTON_LEFT) == GLFW_PRESS) {
        if (mFirstClick) {
            glfwSetInputMode(window.GetWindow(), GLFW_CURSOR, GLFW_CURSOR_DISABLED);
            mFirstClick = false;
        }

        double mouseX, mouseY;
        glfwGetCursorPos(window.GetWindow(), &mouseX, &mouseY);
        
        float deltaX = static_cast<float>(mouseX - mLastMouseX);
        float deltaY = static_cast<float>(mouseY - mLastMouseY);
        mOrientation = glm::rotate(mOrientation, glm::radians(deltaX / mSensitivity), mUp);
        glm::vec3 right = glm::normalize(glm::cross(mOrientation, mUp));
        mOrientation = glm::rotate(mOrientation, glm::radians(deltaY / mSensitivity), right);
        mLastMouseX = mouseX;
        mLastMouseY = mouseY;
        
        }
    else {
        mFirstClick = true;
        glfwSetInputMode(window.GetWindow(), GLFW_CURSOR, GLFW_CURSOR_NORMAL);
    }
}