CCACHE = ccache
CC = $(CCACHE) gcc
CXX = $(CCACHE) g++
CPPFLAGS = -MT $@ -MMD -MP
TARGET_ARCH ?=

WARNINGS = -Wall -Wextra -pedantic -Wstrict-aliasing=2 -Wformat-security      \
    -Wstrict-overflow=5 -Wfloat-equal -Wformat-extra-args -Wshadow -Winit-self\
    -Wswitch-default -Wformat-nonliteral -Wdouble-promotion -Wnull-dereference\
    -Walloca -Wdouble-promotion -Wduplicated-branches -Wduplicated-cond -Wchkp\
    -Wconversion -Wlogical-not-parentheses -Walloc-zero -Wcast-qual -Wrestrict\
    -Wformat-y2k -Wcast-align -Wlogical-op -Wwrite-strings -Wsign-conversion  \
    -Wredundant-decls -Wmissing-include-dirs -Wswitch-enum                    \
    -Wunused-const-variable=2 -Wdangling-else -Wnonnull                       \
     -Wsuggest-attribute=pure -Wsuggest-attribute=const                       \
    -Wsuggest-attribute=noreturn -Wmissing-noreturn -Wmissing-format-attribute\
    -Wsuggest-attribute=malloc -Wsuggest-attribute=format                     \
    -Wsuggest-attribute=cold                                                  \
    -Werror
WARNINGS_C_ONLY = -Wbad-function-cast -Winit-self -fno-common
WARNINGS_FORCE_CXX = -Wuseless-cast -Wsubobject-linkage -Wzero-as-null-pointer-constant
WARNINGS_TEST = -Wno-float-equal -Wno-switch-enum -Wno-strict-overflow -Wno-suggest-attribute=const
WARNINGS_TEST_CXX = -Wno-zero-as-null-pointer-constant -Wno-useless-cast

LTO =
INCLUDE += -I"include" -isystem"3rd"
SECURITY =
DEFINES = -D_FORTIFY_SOURCE=2
DEBUG = -g3
OPENMP = -fopenmp
OPTIMIZE = -O3 -fstrict-aliasing -funsafe-math-optimizations -ftracer
CXXSTANDARD = -std=gnu++1z
CSTANDARD = -std=gnu11

SANITIZERS =
THREAD_SANITIZER =

LD_LTO =
LD_INCLUDE =
LD_SECURITY =
LD_SYSTEM =

LIBS_OPENMP = -fopenmp
LIBS_SYSTEM = -lm
LIBS_THREAD = -pthread
LIBS_3RD =

FLAGS = $(OPTIMIZE) $(WARNINGS) $(INCLUDE) $(LTO) $(DEFINES) $(OPENMP)         \
    $(SECURITY) $(DEBUG)

CFLAGS = $(CSTANDARD) $(FLAGS) $(WARNINGS_C_ONLY)
CXXFLAGS = $(CXXSTANDARD) $(FLAGS) $(WARNINGS_FORCE_CXX)
LDFLAGS = $(LD_INCLUDE) $(LD_SECURITY) $(LD_LTO) $(LD_SYSTEM) $(DEBUG)
LIBS = $(LIBS_3RD) $(LIBS_OPENMP) $(LIBS_SYSTEM) $(LIBS_THREAD)

