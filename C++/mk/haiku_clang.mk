CCACHE = ccache
CC = $(CCACHE) clang
CXX = $(CCACHE) clang++
CPPFLAGS = -MT $@ -MMD -MP
TARGET_ARCH ?=

WARNINGS = -Weverything -Wno-c++98-compat -Wno-c++98-compat-pedantic -Wno-padded -Wno-tautological-pointer-compare -Wno-covered-switch-default -Werror
WARNINGS_TESTS = -Wno-disabled-macro-expansion -Wno-global-constructors

INCLUDE = -I"include" -isystem"3rd" -isystem "/boot/system/develop/headers/x86/c++"  -isystem"/boot/system/develop/headers/x86/c++/i586-pc-haiku"
LTO =
SECURITY = 
DEFINES = 
DEBUG = -g3
OPENMP =
OPTIMIZE = -O3 -fstrict-aliasing -funsafe-math-optimizations
CXXSTANDARD = -std=c++1z

SANITIZERS = 
THREAD_SANITIZER =

LD_LTO =
LD_INCLUDE = 
LD_SECURITY =
LD_SYSTEM =

LIBS_OPENMP =
LIBS_SYSTEM =
LIBS_THREAD =
LIBS_3RD =
LIBS_TEST = -lboost_unit_test_framework

FLAGS = $(OPTIMIZE) $(WARNINGS) $(INCLUDE) $(LTO) $(DEFINES) $(OPENMP)         \
    $(SECURITY) $(DEBUG)

CXXFLAGS = $(CXXSTANDARD) $(FLAGS)
LDFLAGS = $(LD_INCLUDE) $(LD_SECURITY) $(LD_LTO) $(LD_SYSTEM) $(DEBUG)
LIBS = $(LIBS_3RD) $(LIBS_OPENMP) $(LIBS_SYSTEM) $(LIBS_THREAD)
