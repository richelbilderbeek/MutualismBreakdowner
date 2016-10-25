#Specific, console
include(../RibiClasses/CppAbout/CppAbout.pri)
include(../RibiClasses/CppFileIo/CppFileIo.pri)
include(../RibiClasses/CppHelp/CppHelp.pri)
include(../RibiClasses/CppMenuDialog/CppMenuDialog.pri)
include(../RibiUnits/RibiUnits.pri)
include(MutualismBreakdownerConsole.pri)

SOURCES += main.cpp

QMAKE_CXX = g++-5
QMAKE_LINK = g++-5
QMAKE_CC = gcc-5
# Qt goes bad with -Weffc++
QMAKE_CXXFLAGS += -Wall -Wextra -Werror -std=c++14

# QResources give this error
QMAKE_CXXFLAGS += -Wno-unused-variable

# gcov
QMAKE_CXXFLAGS += -fprofile-arcs -ftest-coverage
LIBS += -lgcov

# Boost.Test
LIBS += -lboost_unit_test_framework
