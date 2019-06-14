include(../RibiClasses/CppAbout/CppAbout.pri)
include(../RibiClasses/CppFileIo/CppFileIo.pri)
include(../RibiClasses/CppHelp/CppHelp.pri)
include(../RibiClasses/CppMenuDialog/CppMenuDialog.pri)
include(../RibiClasses/CppQtAboutDialog/CppQtAboutDialog.pri)
include(../RibiClasses/CppQtHideAndShowDialog/CppQtHideAndShowDialog.pri)
include(../RibiLibraries/Qwt.pri)

#Specific, console
include(../RibiUnits/RibiUnits.pri)
include(MutualismBreakdownerDesktop.pri)

SOURCES += qtmain.cpp

# C++14
CONFIG += c++14
QMAKE_CXXFLAGS += -std=c++14

# Qt goes bad with -Weffc++
QMAKE_CXXFLAGS += -Wall -Wextra -Werror

# Qt
QT += core gui widgets

# QResources give this error
QMAKE_CXXFLAGS += -Wno-unused-variable

# gcov
QMAKE_CXXFLAGS += -fprofile-arcs -ftest-coverage
LIBS += -lgcov

# Thanks QDateTime
QMAKE_CXXFLAGS += -Wno-unused-result
