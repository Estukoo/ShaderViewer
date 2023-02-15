#pragma once

#include <vector>

template <typename T>
class BufArray {
public:
    explicit BufArray(const std::vector<T>& data, unsigned int size) : data_(data), size_(size), length_(data.size() * sizeof(T)) {}

    const T* data() const { return data_.data(); }
    unsigned int size() const { return size_; }
    unsigned int length() const { return length_; }

private:
    std::vector<T> data_;
    unsigned int size_;
    unsigned int length_;
};