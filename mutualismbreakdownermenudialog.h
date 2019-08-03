#ifndef MUTUALISMBREAKDOWNERMENUDIALOG_H
#define MUTUALISMBREAKDOWNERMENUDIALOG_H

#include <string>
#include <vector>

#pragma GCC diagnostic push

#include <boost/scoped_ptr.hpp>

#include "about.h"
#include "menudialog.h"
#pragma GCC diagnostic pop

namespace ribi {
namespace mb {

struct MenuDialog final : public ::ribi::MenuDialog
{
  MenuDialog();
  ~MenuDialog() noexcept {}
  int ExecuteSpecific(const std::vector<std::string>& argv) noexcept override;

  About GetAbout() const noexcept override;
  Help GetHelp() const noexcept override;
  std::string GetVersion() const noexcept override;
  std::vector<std::string> GetVersionHistory() const noexcept override;
};

} //~namespace mb
} //~namespace ribi

#endif // MUTUALISMBREAKDOWNERMENUDIALOG_H
