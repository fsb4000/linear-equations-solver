CCACHE = ccache
CC = $(CCACHE) clang
CPPFLAGS = -MT $@ -MMD -MP
TARGET_ARCH ?=

WARNINGS = -w
LTO =
SECURITY =
DEFINES =
DEBUG = -g3
OPENMP = -fopenmp
OPTIMIZE = -O3 -fstrict-aliasing -funsafe-math-optimizations -ftracer
CSTANDARD = -std=c89

SANITIZERS =
THREAD_SANITIZER =

LD_LTO =
LD_INCLUDE =
LD_SECURITY =
LD_SYSTEM =

LIBS_OPENMP = -fopenmp=libiomp5
LIBS_SYSTEM = -lm
LIBS_THREAD =  -pthread

FLAGS = $(OPTIMIZE) $(LTO) $(DEFINES) $(OPENMP) $(SECURITY) $(DEBUG)
CFLAGS = $(CSTANDARD) $(FLAGS) $(WARNINGS)
LDFLAGS = $(LD_INCLUDE) $(LD_SECURITY) $(LD_LTO) $(LD_SYSTEM) $(DEBUG)
LIBS = $(LIBS_OPENMP) $(LIBS_SYSTEM) $(LIBS_THREAD)