#ifndef PARAMETERS_HPP
#define PARAMETERS_HPP

#pragma once

#include <cstddef>

#include <attributes.h>

class parameters
{
private:
    const char* in;
    const char* out;
    bool verbose;
public:
    NONNULL (3) parameters (std::size_t argc, const char* argv[]) noexcept;
    const char* get_in() const noexcept;
    const char* get_out() const noexcept;
    bool is_verbose() const noexcept;
};

#endif
