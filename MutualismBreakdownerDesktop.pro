include(../RibiClasses/CppAbout/CppAbout.pri)
include(../RibiClasses/CppFileIo/CppFileIo.pri)
include(../RibiClasses/CppHelp/CppHelp.pri)
include(../RibiClasses/CppMenuDialog/CppMenuDialog.pri)
include(../RibiClasses/CppQtAboutDialog/CppQtAboutDialog.pri)
include(../RibiClasses/CppQtHideAndShowDialog/CppQtHideAndShowDialog.pri)

#Specific, console
include(../RibiUnits/RibiUnits.pri)
include(MutualismBreakdownerDesktop.pri)

SOURCES += qtmain.cpp


CONFIG += c++17
QMAKE_CXXFLAGS += -std=c++17

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

# Qwt
# Normal compiling
LIBS += -lqwt-qt5
INCLUDEPATH += /usr/include/qwt

# For crosscompiling
#INCLUDEPATH += /home/richel/GitHubs/RibiLibraries/mxe/usr/i686-w64-mingw32.static/qt5/include
#LIBS += -lqwt
#QT += svg
