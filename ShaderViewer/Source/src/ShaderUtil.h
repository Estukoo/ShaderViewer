#pragma once

#include "Type/BufArray.h"

#include <GL/glew.h>
#include <string>

class ShaderUtil {
public:
    GLuint mProgramId;

    ShaderUtil();
    ShaderUtil(const std::string& vertex_shader_file, const std::string& fragment_shader_file);
    ~ShaderUtil();

    GLuint GetProgram() const;

    void Load(const std::string& vertex_shader_file, const std::string& fragment_shader_file);
    void Use() const;
    void Delete() const;

    void SetUniform1i(const std::string& name, int value);
    void SetUniform1f(const std::string& name, float value);
    void SetUniform2f(const std::string& name, float v0, float v1);
    void SetUniform4f(const std::string& name, float v0, float v1, float v2, float v3);

    void LoadImage(const std::string& image_file, unsigned int slot);

    template <typename T>
    void SetAttribute(const std::string& attribute_name, const BufArray<T>& data);

    template <typename T>
    void DrawVertex(const BufArray<T>& data);

private:
    GLuint mVertexShader;
    GLuint mFragmentShader;
    
    int GetUniformLocation(const std::string& name);

    std::string ReadShaderFile(const std::string& file_path);
    GLuint GetCompiledShader(unsigned int shader_type, const std::string& shader_source);
};

template<typename T>
inline void ShaderUtil::SetAttribute(const std::string& attribute_name, const BufArray<T>& data)
{
    GLuint attrDataLocation = glGetAttribLocation(mProgramId, attribute_name.c_str());
    glVertexAttribPointer(attrDataLocation, data.size(), GL_FLOAT, GL_FALSE, 0, data.data());
    glEnableVertexAttribArray(attrDataLocation);
}

template<typename T>
inline void ShaderUtil::DrawVertex(const BufArray<T>& data)
{
    const T* arr = data.data();
    glDrawArrays(GL_TRIANGLES, 0, (data.length() / sizeof(T)) / data.size());
}
