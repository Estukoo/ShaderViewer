#include "WindowGUI.h"

WindowGUI::WindowGUI(unsigned int width, unsigned int height, const std::string& title) : mWidth(width), mHeight(height), mTime(0.0f) {
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
    shaderUtil = ShaderUtil(vertex_shader_file, fragment_shader_file);
    shaderUtil.Use();
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
        
        mCamera.Inputs(mWindow);
        mCamera.Matrix(45.0f, 0.1f, 100.0f, shaderUtil, "camMatrix");

        Render();

        glfwSwapBuffers(mWindow);
        glfwPollEvents();
    }
}

void WindowGUI::SetCamera(const Camera &camera)
{
    mCamera = camera;
}

void WindowGUI::CalculateUtilsMembers()
{
	glfwGetFramebufferSize(mWindow, &mWidth, &mHeight);
	mTime = (float)glfwGetTime();
}

bool WindowGUI::ShouldClose() {
    return glfwWindowShouldClose(mWindow);
}