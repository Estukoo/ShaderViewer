#include "WindowGUI.h"

WindowGUI::WindowGUI(unsigned int width, unsigned int height, const std::string& title) {
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
    shader_util = new ShaderUtil(vertex_shader_file, fragment_shader_file);
}

void WindowGUI::Loop(float red, float green, float blue, float alpha)
{        
    shader_util->Use();
    
    CalculateUtilsMembers();
    
    PreRender();

    glClearColor(red, green, blue, alpha);

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