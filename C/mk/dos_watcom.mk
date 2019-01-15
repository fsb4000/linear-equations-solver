CCACHE =
CC = $(CCACHE) owcc -bdos4g
CXX = $(CCACHE) owcc -bdos4g -xc++
CPPFLAGS = #-MT $@ -MMD -MP
TARGET_ARCH =

WARNINGS = -Wall -Wextra
WARNINGS_C_ONLY =
WARNINGS_FORCE_CXX =
WARNINGS_TEST =
WARNINGS_TEST_CXX =

INCLUDE = -I"${WATCOM}/h" -I"include" -I"3rd" -I"3rd/unity/src" -I"3rd/unity/extras/fixture/src"
LTO =
SECURITY = 
DEFINES = -D__STDC_LIMIT_MACROS -D__STDC_FORMAT_MACROS
DEBUG = -g3
OPENMP =
OPTIMIZE = -O3
CXXSTANDARD = -std=c++11
CSTANDARD = -std=c99

SANITIZERS = 
THREAD_SANITIZER =

LINK = ${CC}
LD_LTO =
LD_INCLUDE = 
LD_SECURITY =
LD_SYSTEM =

LIBS_OPENMP =
LIBS_SYSTEM =
LIBS_THREAD =
LIBS_3RD =

FLAGS = $(OPTIMIZE) $(WARNINGS) $(INCLUDE) $(LTO) $(DEFINES) $(OPENMP)         \
    $(SECURITY) $(DEBUG)

CFLAGS = $(CSTANDARD) $(FLAGS) $(WARNINGS_C_ONLY)
CXXFLAGS = $(CXXSTANDARD) $(FLAGS) $(WARNINGS_FORCE_CXX)
LDFLAGS = $(LD_INCLUDE) $(LD_SECURITY) $(LD_LTO) $(LD_SYSTEM) $(DEBUG)
LIBS = $(LIBS_3RD) $(LIBS_OPENMP) $(LIBS_SYSTEM) $(LIBS_THREAD)