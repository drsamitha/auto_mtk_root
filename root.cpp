#include <cstdlib>
#include <iostream>
#include <string>

using std::string;
using std::cout;
using std::endl;


#ifdef _WIN32 		//for windows
const adb="adb.exe";
#else			//for linux
const adb="adb";
#endif


int main(int argc, char* argv[])

{
	string cmd=adb+"devices";
	system(cmd.c_str()); 	//give android device list + status
				//std::string class c_str() method - convert string	

	return 0;
}


