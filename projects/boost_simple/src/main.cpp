
// http://www.boost.org/doc/libs/1_66_0/libs/filesystem/doc/tutorial.html

#include <iostream>
#include <boost/filesystem.hpp>

int main(int argc, char* argv[])
{
  std::cout << boost::filesystem::current_path() << '\n';
  
  return 0;
}