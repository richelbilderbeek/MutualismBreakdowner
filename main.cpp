#include "mutualismbreakdownerparameters.h"
#include "mutualismbreakdownertimesimulation.h"
#include <iostream>

int main()
{
  try
  {
    ribi::mb::Parameters p = ribi::mb::Parameters::GetTest(0);
    ribi::mb::TimeSimulation s(p);
    s.Run();
    std::cout << s << std::endl;
    std::cout << "SIM FINISHED SUCCESSFULLY\n";
  }
  catch(std::logic_error& e)
  {
    std::cerr << "main: " << e.what() << std::endl;
    std::cout << "SIM FINISHED WITH ERROR\n";
  }
  std::cout << "DONE\n";
}
