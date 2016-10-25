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


QMAKE_CXX = g++-5
QMAKE_LINK = g++-5
QMAKE_CC = gcc-5
# Qt goes bad with -Weffc++
QMAKE_CXXFLAGS += -Wall -Wextra -Werror -std=c++14

# Qt
equals(QT_MAJOR_VERSION, 4): LIBS +=  -lQtSvg
greaterThan(QT_MAJOR_VERSION, 4): QT +=  concurrent opengl printsupport svg

# QResources give this error
QMAKE_CXXFLAGS += -Wno-unused-variable

# gcov
QMAKE_CXXFLAGS += -fprofile-arcs -ftest-coverage
LIBS += -lgcov

