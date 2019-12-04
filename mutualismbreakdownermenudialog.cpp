//---------------------------------------------------------------------------
/*
MutualismBreakdowner, seagrass model
Copyright (C) 2015 Richel Bilderbeek

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.See the
GNU General Public License for more details.
You should have received a copy of the GNU General Public License
along with this program.If not, see <http://www.gnu.org/licenses/>.
*/
//---------------------------------------------------------------------------
//System expert: Greg Fivash
//Model development: Greg Fivash (major), Richel Bilderbeek (minor)
//Programming: Richel Bilderbeek
//
//From http://www.github.com/richelbilderbeek/MutualismBreakdowner
//---------------------------------------------------------------------------



#include "mutualismbreakdownermenudialog.h"

#include <algorithm>
#include <fstream>
#include <iostream>
#include <iterator>

#include <boost/lexical_cast.hpp>

#include <QFile>

#include "mutualismbreakdownermenudialog.h"
#include "fileio.h"


ribi::mb::MenuDialog::MenuDialog()
{

}

int ribi::mb::MenuDialog::ExecuteSpecific(const std::vector<std::string>& argv) noexcept
{
  const int argc = static_cast<int>(argv.size());
  if (argc == 1 || argc > 4)
  {
    std::cout << GetHelp() << '\n';
    return 1;
  }
  return 0;
}

ribi::About ribi::mb::MenuDialog::GetAbout() const noexcept
{
  About a(
    "Greg Fivash and Richel Bilderbeek",
    "MutualismBreakdowner",
    "simulation",
    "the 12th of November 2015",
    "2015-2015",
    "http://www.richelbilderbeek.nl/ToolMutualismBreakdowner.htm",
    GetVersion(),
    GetVersionHistory()
  );
  return a;
}

std::string ribi::mb::MenuDialog::GetVersion() const noexcept
{
  return "2.2";
}

std::vector<std::string> ribi::mb::MenuDialog::GetVersionHistory() const noexcept
{
  return {
    "2015-05-03: Version 0.1: initial version with 3 ODEs",
    "2015-05-05: Version 1.0: implemented system of 4 ODEs, added menu screens",
    "2015-05-12: Version 2.0: implemented system of 2 ODEs",
    "2015-05-13: Version 2.1: added spatial model",
    "2015-11-12: Version 2.2: moved to own GitHub"
  };
}

ribi::Help ribi::mb::MenuDialog::GetHelp() const noexcept
{
  return ribi::Help(
    "MutualismBreakdowner",
    "Seagrass model",
    {
      //No additional options
    },
    {
    }
  );
}
