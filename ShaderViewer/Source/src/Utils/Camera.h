#pragma once

#include <string>

#include "WindowGUI.h"

#include <glm/glm.hpp>
#include <glm/gtc/matrix_transform.hpp>
#include <glm/gtx/rotate_vector.hpp>
#include <glm/gtx/vector_angle.hpp>
#include <glm/gtc/matrix_transform.hpp>
#include <glm/gtc/type_ptr.hpp>
class Camera {
public:
    glm::vec3 mPosition; // The position of the camera
    glm::vec3 mOrientation = glm::vec3(0.0f, 0.0f, -1.0f); // The orientation of the camera
    glm::vec3 mUp = glm::vec3(0.0f, 1.0f, 0.0f); // The up vector of the camera
    float mSpeed = 0.005f; // The movement speed of the camera
    float mSensitivity = 100.0f; // The mouse sensitivity of the camera
    float mFOV = 60.0f; // The field of view of the camera in degrees
    float mFOVScale = 1.0f; // The scale factor of the field of view
    float mNearPlane = 0.1f; // The near clipping plane of the camera
    float mFarPlane = 100.0f; // The far clipping plane of the camera

    // The keys used for moving the camera
    int mKeyForward = GLFW_KEY_W;
    int mKeyBackward = GLFW_KEY_S;
    int mKeyLeft = GLFW_KEY_A;
    int mKeyRight = GLFW_KEY_D;
    int mKeyUp = GLFW_KEY_SPACE;
    int mKeyDown = GLFW_KEY_LEFT_CONTROL;
    int mSpeedUp = GLFW_KEY_LEFT_SHIFT;

    // Max Distances
    float mMaxDistance = 30.0f;
    float mMinDistance = 0.0f;

    // Current Distance
    float mDistance;

    Camera(WindowGUI& window, glm::vec3 position = glm::vec3(0.0f, 0.0f, 2.0f));

    void Update(ShaderUtil& shader, const std::string& uniform);
    void ProcessScroll(double yoffset);
    void HandleInput();
    void Reset();

private:
    bool mFirstClick = true;
    WindowGUI& mWindow;
};