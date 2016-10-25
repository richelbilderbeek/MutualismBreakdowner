#ifndef SIMULATION_H
#define SIMULATION_H

#include <vector>
#include "mutualismbreakdownerparameters.h"

namespace ribi {
namespace mb {

struct TimeSimulation
{
  using SpeciesDensity = ribi::units::SpeciesDensity;
  using Concentration = ribi::units::Concentration;

  using SpeciesDensities = std::vector<SpeciesDensity>;
  using Concentrations = std::vector<Concentration>;

  TimeSimulation(const Parameters& parameters);

  const Parameters& GetParameters() const noexcept { return m_parameters; }
  const SpeciesDensities& GetSeagrassDensities() const noexcept { return m_seagrass_densities; }
  const Concentrations& GetSulfideConcentrations() const noexcept { return m_sulfide_concentrations; }
  const std::vector<double>& GetTimeSeries() const noexcept { return m_timeseries; }

  void Run();

  private:
  const Parameters m_parameters;

  std::vector<SpeciesDensity> m_seagrass_densities;
  std::vector<Concentration> m_sulfide_concentrations;
  std::vector<double> m_timeseries;
};

std::ostream& operator<<(std::ostream& os, const TimeSimulation& simulation) noexcept;

} //~namespace mb
} //~namespace ribi

#endif // SIMULATION_H
