# Qt goes bad with -Weffc++
include(../RibiLibraries/ConsoleApplicationNoWeffcpp.pri)

include(../RibiLibraries/Boost.pri)
include(../RibiLibraries/GeneralConsole.pri)

#Specific, console
include(../RibiClasses/CppUnits/CppUnits.pri)
include(MutualismBreakdownerConsole.pri)

SOURCES += main.cpp
