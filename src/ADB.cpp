#include <cstdlib>
#include <string>



void adb (const  std::string& command) {

    system (("adb " +command).c_str());

}

