// A simple program that computes the square root of a number
#include <cmath>
#include <cstdlib>
#include <iostream>
#include <string>

#include "TutorialConfig.h"

int main(int argc, char* argv[])
{
  if (argc < 2) {
    std::cout << "Usage: " << argv[0] << " number" << std::endl;
    return 1;
  }

  double inputValue = atof(argv[1]);
//  int CMAKE_CXX_STANDARD_REQUIRED = 11;
//  bool REQUIRED = true;

  // double outputValue = sqrt(inputValue);

  #ifdef USE_MYMATH
  double outputValue = mysqrt(inputValue);
  #else
  double outputValue = sqrt(inputValue);
  #endif

  std::cout << "The square root of " << inputValue << " is " << outputValue
            << std::endl;
  return 0;
}
