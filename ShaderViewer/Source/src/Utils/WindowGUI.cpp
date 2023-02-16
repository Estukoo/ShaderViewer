#include "WindowGUI.h"
#include "Camera.h"

#include <glm/glm.hpp>
#include <glm/gtc/type_ptr.hpp>

WindowGUI::WindowGUI() : mWidth(0), mHeight(0), mTime(0.0f) {}

WindowGUI::WindowGUI(unsigned int width, unsigned int height, const std::string &title) : mWidth(width), mHeight(height), mTime(0.0f)
{
    if (!glfwInit()) {
        std::cerr << "Failed to initialize GLFW." << std::endl;
        exit(-1);
    }

    mWindow = glfwCreateWindow(width, height, title.c_str(), NULL, NULL);
    if (!mWindow) {
        std::cerr << "Failed to create GLFW window." << std::endl;
        glfwTerminate();
        exit(-1);
    }

    glfwMakeContextCurrent(mWindow);
}

WindowGUI::~WindowGUI() {
    glfwTerminate();
    
    delete mWindow;
    delete mCamera;
}

void WindowGUI::InitGLEW()
{
    GLenum err = glewInit();
	if (GLEW_OK != err)
	{
		fprintf(stderr, "Error: %s\n", glewGetErrorString(err));
        exit(-1);
	}
    
    fprintf(stdout, "Status: Using GLEW %s\n", glewGetString(GLEW_VERSION));
}

void WindowGUI::InitShaderUtil(const std::string& vertex_shader_file, const std::string& fragment_shader_file)
{
    mShaderUtil = ShaderUtil(vertex_shader_file, fragment_shader_file);
    mShaderUtil.Use();
}

void WindowGUI::Clear(float red, float green, float blue, float alpha)
{
    glClearColor(red, green, blue, alpha);
}

void WindowGUI::Loop()
{        
    CalculateUtilsMembers();
    
    PreRender();

    while (!ShouldClose())
    {
        glClear(GL_COLOR_BUFFER_BIT);

        CalculateUtilsMembers();

        /* Camera */
        mCamera->HandleInput(*this);
        mCamera->Update(mShaderUtil, "viewProjMatrix");

        Render();

        glfwSwapBuffers(mWindow);
        glfwPollEvents();
    }
}

void WindowGUI::SetCamera()
{
    mCamera = new Camera(*this);
}

bool WindowGUI::GetKey(int key) const
{
    return glfwGetKey(mWindow, key) == GLFW_PRESS;
}

GLFWwindow*  WindowGUI::GetWindow()
{
    return mWindow;
}

ShaderUtil WindowGUI::GetShaderUtil()
{
    return mShaderUtil;
}

void WindowGUI::CalculateUtilsMembers()
{
	glfwGetFramebufferSize(mWindow, &mWidth, &mHeight);
	mTime = (float)glfwGetTime();
}

bool WindowGUI::ShouldClose() {
    return glfwWindowShouldClose(mWindow);
}