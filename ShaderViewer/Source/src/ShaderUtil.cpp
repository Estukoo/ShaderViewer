#define STB_IMAGE_IMPLEMENTATION

#include "ShaderUtil.h"
#include "Texture.h"

#include <GL/glew.h>
#include <iostream>
#include <fstream>


/* Public */
ShaderUtil::ShaderUtil() : mProgramId(0), mVertexShader(0), mFragmentShader(0) {}

ShaderUtil::ShaderUtil(const std::string& vertex_shader_file, const std::string& fragment_shader_file)
{
	Load(vertex_shader_file, fragment_shader_file);
}

ShaderUtil::~ShaderUtil()
{
	Delete();
}

GLuint ShaderUtil::GetProgram() const
{
	return mProgramId;
}

void ShaderUtil::Load(const std::string& vertex_shader_file, const std::string& fragment_shader_file)
{
	mProgramId = glCreateProgram();

	mVertexShader = GetCompiledShader(GL_VERTEX_SHADER, ReadShaderFile(vertex_shader_file));
	mFragmentShader = GetCompiledShader(GL_FRAGMENT_SHADER, ReadShaderFile(fragment_shader_file));

	glAttachShader(mProgramId, mVertexShader);
	glAttachShader(mProgramId, mFragmentShader);

	glLinkProgram(mProgramId);
	glValidateProgram(mProgramId);

	glDeleteShader(mVertexShader);
	glDeleteShader(mFragmentShader);

	GLint numUniforms;
	glGetProgramiv(mProgramId, GL_ACTIVE_UNIFORMS, &numUniforms);
}

void ShaderUtil::Use() const
{
	glUseProgram(mProgramId);
}

void ShaderUtil::Delete() const
{
	glUseProgram(0);
	glDeleteProgram(mProgramId);
}

void ShaderUtil::SetUniform1i(const std::string& name, int value)
{
	glUniform1i(GetUniformLocation(name), value);
}

void ShaderUtil::SetUniform1f(const std::string& name, float value)
{
	glUniform1f(GetUniformLocation(name), value);
}

void ShaderUtil::SetUniform2f(const std::string& name, float v0, float v1)
{
	glUniform2f(GetUniformLocation(name), v0, v1);
}

void ShaderUtil::SetUniform4f(const std::string& name, float v0, float v1, float v2, float v3)
{
	glUniform4f(GetUniformLocation(name), v0, v1, v2, v3);
}

void ShaderUtil::LoadImage(const std::string &image_file, unsigned int slot)
{
	Texture* texture = new Texture(image_file);
	texture->Bind(slot);
}

int ShaderUtil::GetUniformLocation(const std::string& name)
{
	int location = glGetUniformLocation(mProgramId, name.c_str());
	// if (location == -1)
	// 	printf("Uniform could not be found (or may be there's an unused uniform) : %s\n", name.c_str());

	return location;
}

/* Private */
std::string ShaderUtil::ReadShaderFile(const std::string& file_path)
{
	std::ifstream file_stream(file_path);
	return std::string((std::istreambuf_iterator<char>(file_stream)), std::istreambuf_iterator<char>());
}

GLuint ShaderUtil::GetCompiledShader(unsigned int type, const std::string& source) {
	GLuint id = glCreateShader(type);
	const char* src = source.c_str();

	glShaderSource(id, 1, &src, nullptr);
	glCompileShader(id);

	int result;
	glGetShaderiv(id, GL_COMPILE_STATUS, &result);

	if (!result) {
		int length;
		glGetShaderiv(id, GL_INFO_LOG_LENGTH, &length);

		char* message = (char*)alloca(length * sizeof(char));
		glGetShaderInfoLog(id, length, &length, message);

		std::cout << "Failed to compile " << (type == GL_VERTEX_SHADER ? "vertex" : "fragment") << " shader!" << std::endl;
		std::cout << message << std::endl;

		glDeleteShader(id);
		return 0;
	}

	return id;
}