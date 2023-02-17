#pragma once

#include <iostream>

#include "ShaderUtil.h"

#include <GLFW/glfw3.h>

class Camera;

class WindowGUI {
public:
    WindowGUI();
    WindowGUI(unsigned int width, unsigned int height, const std::string& title);
    ~WindowGUI();

    void InitGLEW();
    void InitShaderUtil(const std::string& vertex_shader_file, const std::string& fragment_shader_file);
    void Clear(float red, float green, float blue, float alpha);
    bool ShouldClose();
    void Loop();
    void PreRender();
    void Render();
    void SetCamera();

    bool GetKey(int key) const;
    GLFWwindow* GetWindow();
    ShaderUtil GetShaderUtil();

    /* Utils members*/
    int mWidth;
    int mHeight;
    float mTime;

    static void ScrollCallback(GLFWwindow* window, double xoffset, double yoffset);
    static WindowGUI* instance;

private:
    void CalculateUtilsMembers();

    GLFWwindow* mWindow;
    Camera* mCamera;
    ShaderUtil mShaderUtil;
};