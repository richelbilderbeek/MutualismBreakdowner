#Specific, console
include(../RibiClasses/CppAbout/CppAbout.pri)
include(../RibiClasses/CppFileIo/CppFileIo.pri)
include(../RibiClasses/CppHelp/CppHelp.pri)
include(../RibiClasses/CppMenuDialog/CppMenuDialog.pri)
include(../RibiUnits/RibiUnits.pri)
include(MutualismBreakdownerConsole.pri)

SOURCES += main.cpp

# C++17
CONFIG += c++17
QMAKE_CXXFLAGS += -std=c++17

# Qt goes bad with -Weffc++
QMAKE_CXXFLAGS += -Wall -Wextra -Werror

# QResources give this error
QMAKE_CXXFLAGS += -Wno-unused-variable

# gcov
QMAKE_CXXFLAGS += -fprofile-arcs -ftest-coverage
LIBS += -lgcov

# Qt
QT += core gui

# Boost.Test
LIBS += -lboost_unit_test_framework
