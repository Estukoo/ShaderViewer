#include "Camera.h"

Camera::Camera(WindowGUI& window, glm::vec3 position)
    : mWindow(window)
    , mPosition(position)
{
}

void Camera::Update(ShaderUtil& shader, const std::string& uniform)
{
    // Calculate the view and projection matrices
    glm::mat4 view = glm::lookAt(mPosition, mPosition + mOrientation, mUp);
    glm::mat4 projection = glm::perspective(glm::radians(mFOV * mFOVScale), (float)mWindow.mWidth / (float)mWindow.mHeight, mNearPlane, mFarPlane);
    // Send the matrices to the shader
    glUniformMatrix4fv(mWindow.GetShaderUtil().GetUniformLocation(uniform), 1, GL_FALSE, glm::value_ptr(projection * view));
}

void Camera::ProcessScroll(double yoffset)
{
    if (!(mWindow.GetKey(mKeyForward) || mWindow.GetKey(mKeyBackward) || mWindow.GetKey(mKeyLeft) || mWindow.GetKey(mKeyRight) || mWindow.GetKey(mKeyUp) || mWindow.GetKey(mKeyDown))) {
        mDistance -= (float)yoffset * 0.3f;

        if (mDistance < mMinDistance) {
            mDistance = mMinDistance;
        }
        else if (mDistance > mMaxDistance) {
            mDistance = mMaxDistance;
        }

        mPosition = glm::normalize(mPosition) * mDistance;
    }
}

void Camera::Reset()
{
    mPosition = glm::vec3(0.0f, 0.0f, 2.0f);
    mOrientation = glm::vec3(0.0f, 0.0f, -1.0f);
    mUp = glm::vec3(0.0f, 1.0f, 0.0f);
}

void Camera::HandleInput()
{
    if (mWindow.GetKey(GLFW_KEY_TAB)) {
        Reset();
    }

    // Handle movement keys
    if (mWindow.GetKey(mKeyForward)) {
        mPosition += mSpeed * mOrientation;
    }
    if (mWindow.GetKey(mKeyBackward)) {
        mPosition -= mSpeed * mOrientation;
    }
    if (mWindow.GetKey(mKeyLeft)) {
        mPosition -= mSpeed * glm::normalize(glm::cross(mOrientation, mUp));
    }
    if (mWindow.GetKey(mKeyRight)) {
        mPosition += mSpeed * glm::normalize(glm::cross(mOrientation, mUp));
    }
    if (mWindow.GetKey(mKeyUp)) {
        mPosition += mSpeed * mUp;
    }
    if (mWindow.GetKey(mKeyDown)) {
        mPosition -= mSpeed * mUp;
    }
    if (mWindow.GetKey(mSpeedUp)) {
        mSpeed = 0.015f;
    }
    else {
        mSpeed = 0.005f;
    }

    // Update distance and keep it between mMinDistance and mMaxDistance
    mDistance = glm::distance(mPosition, glm::vec3(0.0f, 0.0f, 0.0f));
    if (mDistance < mMinDistance) {
        mDistance = mMinDistance;
        mPosition = glm::normalize(mPosition) * mDistance;
    }
    else if (mDistance > mMaxDistance) {
        mDistance = mMaxDistance;
        mPosition = glm::normalize(mPosition) * mDistance;
    }

    // Handle mouse movement
    if (glfwGetMouseButton(mWindow.GetWindow(), GLFW_MOUSE_BUTTON_LEFT) == GLFW_PRESS) {
        if (mFirstClick) {
            glfwSetInputMode(mWindow.GetWindow(), GLFW_CURSOR, GLFW_CURSOR_DISABLED);
            glfwSetCursorPos(mWindow.GetWindow(), (mWindow.mWidth / 2), (mWindow.mHeight / 2));
            mFirstClick = false;
        }

        double mouseX, mouseY;
        glfwGetCursorPos(mWindow.GetWindow(), &mouseX, &mouseY);

        float rotX = mSensitivity * (float)(mouseY - (mWindow.mHeight / 2)) / mWindow.mHeight;
        float rotY = mSensitivity * (float)(mouseX - (mWindow.mWidth / 2)) / mWindow.mWidth;

        glm::vec3 newOrientation = glm::rotate(mOrientation, glm::radians(-rotX), glm::normalize(glm::cross(mOrientation, mUp)));
        if (abs(glm::angle(newOrientation, mUp) - glm::radians(90.0f)) <= glm::radians(85.0f))
            mOrientation = newOrientation;

        mOrientation = glm::rotate(mOrientation, glm::radians(-rotY), mUp);
        glfwSetCursorPos(mWindow.GetWindow(), (mWindow.mWidth / 2), (mWindow.mHeight / 2));
    }
    else {
        mFirstClick = true;
        glfwSetInputMode(mWindow.GetWindow(), GLFW_CURSOR, GLFW_CURSOR_NORMAL);
    }
}