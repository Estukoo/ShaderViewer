#include "WindowGUI.h"

WindowGUI::WindowGUI(unsigned int width, unsigned int height, const std::string& title) : width(width), height(height) {
    if (!glfwInit()) {
        std::cerr << "Failed to initialize GLFW." << std::endl;
        exit(-1);
    }

    window = glfwCreateWindow(width, height, title.c_str(), NULL, NULL);
    if (!window) {
        std::cerr << "Failed to create GLFW window." << std::endl;
        glfwTerminate();
        exit(-1);
    }

    glfwMakeContextCurrent(window);
}

WindowGUI::~WindowGUI() {
    glfwTerminate();
    
    delete window;
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
    shader_util = ShaderUtil(vertex_shader_file, fragment_shader_file);
    shader_util.Use();
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

        Render();

        glfwSwapBuffers(window);
        glfwPollEvents();
    }
}

void WindowGUI::CalculateUtilsMembers()
{
	glfwGetFramebufferSize(window, &width, &height);
	time = (float)glfwGetTime();
}

bool WindowGUI::ShouldClose() {
    return glfwWindowShouldClose(window);
}